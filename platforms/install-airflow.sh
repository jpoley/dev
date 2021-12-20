sudo mkdir -p /opt/k8s/airflow/default
sudo mkdir -p /opt/k8s/airflow/data
sudo mkdir -p /opt/k8s/airflow/redis-db
sudo mkdir -p /opt/k8s/airflow/logs
sudo mkdir -p /opt/k8s/airflow/dags
sudo mkdir -p /opt/k8s/airflow/posgresql/data


kubectl create -f /home/vagrant/platforms/pv1.yaml
kubectl create -f /home/vagrant/platforms/pv2.yaml
kubectl create -f /home/vagrant/platforms/pv3.yaml
kubectl create -f /home/vagrant/platforms/pv-log.yaml
kubectl create -f /home/vagrant/platforms/pv-dag.yaml
kubectl create -f /home/vagrant/platforms/pv-pg.yaml

helm repo add apache-airflow https://airflow.apache.org

kubectl create namespace airflow
helm install --debug airflow --set logs.persistence.enabled=true  \
--set logs.persistence.existingClaim=logs \
--set dags.persistence.storageClassName=dags \
--set redis.persistence.storageClassName=redisdb \
--set workers.persistence.storageClassName=default \
apache-airflow/airflow --namespace airflow 
