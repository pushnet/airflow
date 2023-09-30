mkdir ~/airflow
cd ~/airflow

mkdir -p ./dags ./logs ./plugins ./config
printf "AIRFLOW_UID=$(id -u)" > .env

docker compose --file ~/docker-images/docker-compose-images/airflow-docker-compose.yaml up airflow-init
docker compose --file ~/docker-images/docker-compose-images/airflow-docker-compose.yaml up
