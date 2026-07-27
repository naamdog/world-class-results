<#
.SYNOPSIS
  Install the World Class Results skill for Claude Code, Codex, and/or Grok Build.

.EXAMPLE
  .\install.ps1              # installs for all detected targets
  .\install.ps1 -Target codex
  .\install.ps1 -Target claude,grok
#>
param(
  [ValidateSet('claude', 'codex', 'grok', 'all')]
  [string[]]$Target = @('all')
)

$ErrorActionPreference = 'Stop'
$SkillName = 'world-class-results'
$RepoRoot  = Split-Path -Parent $MyInvocation.MyCommand.Path
$Source    = Join-Path $RepoRoot "skills\$SkillName"

if (-not (Test-Path (Join-Path $Source 'SKILL.md'))) {
  throw "Cannot find skills\$SkillName\SKILL.md. Run this from inside the cloned repo."
}

function Install-To([string]$Dest, [string]$Label) {
  if (Test-Path $Dest) {
    Remove-Item -Recurse -Force $Dest -Confirm:$false
  }
  New-Item -ItemType Directory -Force -Path $Dest | Out-Null
  Copy-Item -Recurse -Force (Join-Path $Source '*') $Dest
  Write-Host "  installed  $Label  ->  $Dest"
}

$targets = if ($Target -contains 'all') { @('claude', 'codex', 'grok') } else { $Target }
Write-Host "`nWorld Class Results" -ForegroundColor Cyan

foreach ($t in ($targets | Select-Object -Unique)) {
  switch ($t) {
    'claude' { Install-To (Join-Path $env:USERPROFILE ".claude\skills\$SkillName")  'Claude Code' }
    'codex'  { Install-To (Join-Path $env:USERPROFILE ".agents\skills\$SkillName")  'Codex      ' }
    'grok'   {
      # Grok Build discovers the .claude/ skills tree, so the Claude install covers it.
      $dest = Join-Path $env:USERPROFILE ".claude\skills\$SkillName"
      if (-not (Test-Path $dest)) { Install-To $dest 'Grok Build ' }
      else { Write-Host "  covered    Grok Build   ->  $dest (shares the Claude skills tree)" }
      Write-Host "             verify with: grok inspect"
    }
  }
}

Write-Host "`nDone. Restart your agent, then try: rate that out of 10 and push it to 10`n"
