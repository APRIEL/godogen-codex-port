# Security Policy

This repository is intended to be run with local environment variables for external services.

## Do Not Commit Secrets

- `GOOGLE_API_KEY`
- `GEMINI_API_KEY`
- any other provider token or credential used by the helper scripts

## Recommended Practice

- set secrets in your shell or user profile, not in tracked files
- keep screenshots and logs free of tokens or absolute local paths
- rotate any credential that has been pasted into chat, issues, or public posts

## Reporting a Security Issue

If you find a secret in the repository history or published artifacts, remove it and rotate the credential immediately.
