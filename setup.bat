set STORAGE_ROOT=../storage

pushd orchis
docker compose build
docker compose up -d
docker compose exec web python manage.py makemigrations
docker compose exec web python manage.py migrate
docker compose down
popd
