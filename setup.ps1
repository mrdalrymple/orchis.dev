$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $scriptDir

$env:STORAGE_ROOT = "$scriptDir/data/storage"
$env:ORCHIS_REPO_ROOT = "$scriptDir/data/storage/repos"
$env:ORCHIS_DB_ROOT = "$scriptDir/data/storage/db"

Push-Location orchis
docker compose build
docker compose up -d
docker compose exec web python manage.py makemigrations
docker compose exec web python manage.py migrate
docker compose down
Pop-Location
