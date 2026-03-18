param(
    [Parameter(Mandatory = $true)]
    [string]$PlanPath,

    [Parameter(Mandatory = $true)]
    [string]$TaskNumber,

    [Parameter(Mandatory = $true)]
    [string]$TaskFolder,

    [ValidateSet("static", "dynamic")]
    [string]$Mode = "dynamic",

    [string]$ReferencePath = "reference.png",

    [string]$OutputPath = ""
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path $PlanPath)) {
    throw "Plan file not found: $PlanPath"
}

$planLines = Get-Content $PlanPath -Encoding utf8
$sectionHeader = "## $TaskNumber."
$sectionStart = -1
for ($i = 0; $i -lt $planLines.Count; $i++) {
    if ($planLines[$i].TrimStart().StartsWith($sectionHeader)) {
        $sectionStart = $i
        break
    }
}

if ($sectionStart -lt 0) {
    throw "Task section not found in plan: $TaskNumber"
}

$sectionEnd = $planLines.Count
for ($i = $sectionStart + 1; $i -lt $planLines.Count; $i++) {
    if ($planLines[$i].TrimStart().StartsWith("## ")) {
        $sectionEnd = $i
        break
    }
}

$section = $planLines[$sectionStart..($sectionEnd - 1)]

function Get-BlockText([string[]]$lines, [string]$label) {
    $needle = "- **${label}:**"
    $start = -1
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i].TrimStart().StartsWith($needle)) {
            $start = $i
            break
        }
    }
    if ($start -lt 0) {
        return ""
    }

    $text = $lines[$start].TrimStart().Substring($needle.Length).Trim()
    return $text
}

$goal = Get-BlockText $section "Goal"
$requirements = @()
$verify = Get-BlockText $section "Verify"

$reqStart = -1
for ($i = 0; $i -lt $section.Count; $i++) {
    if ($section[$i].TrimStart().StartsWith("- **Requirements:**")) {
        $reqStart = $i + 1
        break
    }
}

if ($reqStart -ge 0) {
    for ($i = $reqStart; $i -lt $section.Count; $i++) {
        $line = $section[$i]
        if ($line.TrimStart().StartsWith("- **") -or $line.TrimStart().StartsWith("## ")) {
            break
        }
        $trimmed = $line.Trim()
        if ($trimmed.StartsWith("- ")) {
            $requirements += $trimmed.Substring(2)
        }
    }
}

$contextLines = @()
if ($goal) {
    $contextLines += "Goal: $goal"
}
if ($requirements.Count -gt 0) {
    $contextLines += "Requirements:"
    foreach ($req in $requirements) {
        $contextLines += "- $req"
    }
}
if ($verify) {
    $contextLines += "Verify: $verify"
}

if ($contextLines.Count -eq 0) {
    throw "Could not derive task context from plan section $TaskNumber"
}

$contextFile = Join-Path ([System.IO.Path]::GetTempPath()) ("godot-task-qa-context-{0}.txt" -f [guid]::NewGuid().ToString("N"))
$contextLines | Set-Content -Path $contextFile -Encoding utf8

$wrapper = Join-Path (Split-Path -Parent $MyInvocation.MyCommand.Path) "run_visual_qa.ps1"
try {
    & powershell -ExecutionPolicy Bypass -File $wrapper -TaskFolder $TaskFolder -Mode $Mode -ReferencePath $ReferencePath -ContextFile $contextFile -OutputPath $OutputPath
}
finally {
    Remove-Item $contextFile -Force -ErrorAction SilentlyContinue
}
