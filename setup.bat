set STORAGE_ROOT=../storage

pushd orchis
docker compose exec web python manage.py makemigrations
docker compose exec web python manage.py migrate
popd
