sudo mkdir -p /opt/k8s/mount1
sudo mkdir -p /opt/k8s/mount2
sudo mkdir -p /opt/k8s/mount3
kubectl create -f pv1.yaml
kubectl create -f pv2.yaml
kubectl create -f pv3.yaml


kubectl create namespace airflow
helm repo add apache-airflow https://airflow.apache.org
helm install airflow apache-airflow/airflow --namespace airflow