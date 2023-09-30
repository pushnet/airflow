mkdir ~/airflow
cd ~/airflow

mkdir -p ./dags ./logs ./plugins ./config
printf "AIRFLOW_UID=$(id -u)" > .env

~/pudata/deploy.sh

cp ~/docker-images/airflow/Dockerfile ./Dockerfile
cp ~/docker-images/airflow/airflow-docker-compose.yaml ./docker-compose.yaml

docker compose up airflow-init
docker compose up
