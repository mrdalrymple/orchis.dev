$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $scriptDir

$env:STORAGE_ROOT = "$scriptDir/data/storage"
$env:ORCHIS_REPO_ROOT = "$scriptDir/data/storage/repos"
$env:ORCHIS_DB_ROOT = "$scriptDir/data/storage/db"

# delete everything under /data/ and the data directory itself
#Get-ChildItem -Path $env:STORAGE_ROOT -Recurse -Force | Remove-Item -Recurse -Force
Remove-Item -Path "$scriptDir/data" -Recurse -Force
