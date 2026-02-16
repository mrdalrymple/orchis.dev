$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $scriptDir

$env:STORAGE_ROOT = "$scriptDir/data/storage"
$env:ORCHIS_REPO_ROOT = "$scriptDir/data/storage/repos"
$env:ORCHIS_DB_ROOT = "$scriptDir/data/storage/db"

Push-Location orchis
docker compose up --build --detach
Pop-Location
