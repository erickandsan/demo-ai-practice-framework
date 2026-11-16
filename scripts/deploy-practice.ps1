param([Parameter(Mandatory)][string]$Target)
$hub = Split-Path $PSScriptRoot -Parent
if (-not (Test-Path $Target)) { throw "Target does not exist: $Target" }
$practice = Join-Path $Target "_practice"
foreach ($part in "practice-core","accelerators") {
  $dest = Join-Path $practice $part
  New-Item -ItemType Directory -Force $dest | Out-Null
  robocopy (Join-Path $hub $part) $dest /MIR /NFL /NDL /NJH /NJS | Out-Null
}
foreach ($file in "VERSION.txt","CHANGELOG.md") {
  Copy-Item (Join-Path $hub $file) (Join-Path $practice $file) -Force
}
if (-not (Test-Path (Join-Path $Target "CLAUDE.md"))) {
  robocopy (Join-Path $hub "workspace-template") $Target /E /XC /XN /XO /NFL /NDL /NJH /NJS | Out-Null
  Write-Output "Scaffolded engagement from workspace-template."
}
$version = Get-Content (Join-Path $hub "VERSION.txt")
Write-Output "Deployed practice v$version to $practice"
