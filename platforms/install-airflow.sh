sudo mkdir -p /opt/k8s/default
sudo mkdir -p /opt/k8s/data
sudo mkdir -p /opt/k8s/redis-db

kubectl create -f /home/vagrant/platforms/pv1.yaml
kubectl create -f /home/vagrant/platforms/pv2.yaml
kubectl create -f /home/vagrant/platforms/pv3.yaml

helm repo add apache-airflow https://airflow.apache.org

kubectl create namespace airflow
helm install --debug airflow --set logs.persistence.enabled=true  --set logs.persistence.existingClaim=default apache-airflow/airflow --namespace airflow 
