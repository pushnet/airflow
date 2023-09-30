mkdir ~/airflow
cd ~/airflow

mkdir -p ./dags ./logs ./plugins ./config
printf "AIRFLOW_UID=$(id -u)" > .env

cp ~/docker-images/docker-compose-images/airflow-docker-compose.yaml ./docker-compose.yaml

docker compose up airflow-init
docker compose up
