param(
    [Parameter(Mandatory = $true)]
    [string]$TaskFolder,

    [ValidateSet("static", "dynamic")]
    [string]$Mode = "dynamic",

    [string]$ReferencePath = "reference.png",

    [string]$ContextText = "",

    [string]$ContextFile = "",

    [string]$OutputPath = ""
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $ReferencePath)) {
    throw "Reference image not found: $ReferencePath"
}

if (-not (Test-Path $TaskFolder)) {
    throw "Task folder not found: $TaskFolder"
}

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$qaScript = Join-Path $scriptDir "visual_qa.py"
$visualQaDir = Join-Path (Get-Location) "visual-qa"
New-Item -ItemType Directory -Force $visualQaDir | Out-Null

if (-not $OutputPath) {
    $existing = Get-ChildItem $visualQaDir -Filter *.md -ErrorAction SilentlyContinue
    $next = if ($existing) { $existing.Count + 1 } else { 1 }
    $OutputPath = Join-Path $visualQaDir ("{0}.md" -f $next)
}

if ($ContextFile) {
    if (-not (Test-Path $ContextFile)) {
        throw "Context file not found: $ContextFile"
    }
    $ContextText = Get-Content $ContextFile -Raw -Encoding utf8
}

$frames = Get-ChildItem $TaskFolder -Filter *.png | Sort-Object Name
if (-not $frames) {
    throw "No PNG frames found in task folder: $TaskFolder"
}

$selectedFrames = @()
if ($Mode -eq "static") {
    $selectedFrames = @($frames[-1].FullName)
} else {
    $selectedFrames = $frames | Select-Object -ExpandProperty FullName
}

$args = @($qaScript)
if ($ContextText) {
    $args += @("--context", $ContextText)
}
$args += $ReferencePath
$args += $selectedFrames

$env:PYTHONUTF8 = "1"
$stdoutPath = [System.IO.Path]::GetTempFileName()
$stderrPath = [System.IO.Path]::GetTempFileName()
$argumentList = @("-3") + $args
$psi = New-Object System.Diagnostics.ProcessStartInfo
$psi.FileName = "py"
$quotedArgs = $argumentList | ForEach-Object {
    '"' + (($_ -replace '\\', '\\') -replace '"', '\"') + '"'
}
$psi.Arguments = [string]::Join(" ", $quotedArgs)
$psi.UseShellExecute = $false
$psi.RedirectStandardOutput = $true
$psi.RedirectStandardError = $true
$psi.CreateNoWindow = $true
$psi.EnvironmentVariables["PYTHONUTF8"] = "1"
if ($env:GOOGLE_API_KEY) {
    $psi.EnvironmentVariables["GOOGLE_API_KEY"] = $env:GOOGLE_API_KEY
}
if ($env:GEMINI_API_KEY) {
    $psi.EnvironmentVariables["GEMINI_API_KEY"] = $env:GEMINI_API_KEY
}

$process = New-Object System.Diagnostics.Process
$process.StartInfo = $psi
[void]$process.Start()
$stdoutText = $process.StandardOutput.ReadToEnd()
$stderrText = $process.StandardError.ReadToEnd()
$process.WaitForExit()
$exitCode = $process.ExitCode
$stdoutText | Set-Content -Path $stdoutPath -Encoding utf8
$stderrText | Set-Content -Path $stderrPath -Encoding utf8
$stdoutText = if (Test-Path $stdoutPath) { Get-Content $stdoutPath -Raw -Encoding utf8 } else { "" }
$stderrText = if (Test-Path $stderrPath) { Get-Content $stderrPath -Raw -Encoding utf8 } else { "" }
Remove-Item $stdoutPath, $stderrPath -Force -ErrorAction SilentlyContinue

if ($stdoutText) {
    $stdoutText | Set-Content -Path $OutputPath -Encoding utf8
}

if ($exitCode -ne 0) {
    if ($stderrText) {
        Add-Content -Path $OutputPath -Value "`n`n[stderr]`n$stderrText" -Encoding utf8
    }
    throw "Visual QA failed. See $OutputPath"
}

if ($stderrText) {
    Write-Host $stderrText.Trim()
}

Write-Output "Visual QA report: $OutputPath"
