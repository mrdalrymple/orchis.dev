set STORAGE_ROOT=../storage
set ORCHIS_REPO_ROOT=../storage/repos
set ORCHIS_DB_ROOT=../storage/db

pushd orchis
docker compose up --build
popd
