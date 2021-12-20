sudo mkdir -p /opt/k8s/airflow/default
sudo mkdir -p /opt/k8s/airflow/data
sudo mkdir -p /opt/k8s/airflow/redis-db
sudo mkdir -p /opt/k8s/airflow/logs
sudo mkdir -p /opt/k8s/airflow/dags
sudo mkdir -p /opt/k8s/airflow/local-storage
sudo mkdir -p /bitnami/posgresql/data


kubectl create -f /home/vagrant/platforms/pv1.yaml
kubectl create -f /home/vagrant/platforms/pv2.yaml
kubectl create -f /home/vagrant/platforms/pv3.yaml
kubectl create -f /home/vagrant/platforms/pv-log.yaml
kubectl create -f /home/vagrant/platforms/pv-dag.yaml
kubectl create -f /home/vagrant/platforms/pv-pg.yaml
kubectl create -f /home/vagrant/platforms/pv-local.yaml
kubectl create -f /home/vagrant/platforms/sc.yaml


helm repo add apache-airflow https://airflow.apache.org

kubectl create namespace airflow
helm install --debug airflow  \
--set logs.persistence.storageClassName=logs \
--set dags.persistence.storageClassName=dags \
--set global.storageClass=data \
--set redis.persistence.storageClassName=redis-db \
--set workers.persistence.storageClassName=data \
apache-airflow/airflow --namespace airflow 


#--set logs.persistence.enabled=true  --set logs.persistence.existingClaim=logs  \
