export AF_HOME=/home/vagrant
sudo mkdir -p /opt/k8s/airflow/default
sudo mkdir -p /opt/k8s/airflow/data
sudo mkdir -p /opt/k8s/airflow/redis-db
sudo mkdir -p /opt/k8s/airflow/logs
sudo mkdir -p /opt/k8s/airflow/dags
sudo mkdir -p /opt/k8s/airflow/local-storage
sudo mkdir -p /opt/k8s/airflow/worker


kubectl create -f $AF_HOME/platforms/pv1.yaml
kubectl create -f $AF_HOME/platforms/pv2.yaml
kubectl create -f $AF_HOME/platforms/pv-worker.yaml
kubectl create -f $AF_HOME/platforms/pv-dag.yaml
kubectl create -f $AF_HOME/platforms/sc.yaml
kubectl create -f $AF_HOME/platforms/sc2.yaml
kubectl create -f $AF_HOME/platforms/sc3.yaml

helm repo add apache-airflow https://airflow.apache.org

kubectl create namespace airflow
helm install --debug airflow  \
--set logs.persistence.storageClassName=logs \
--set dags.persistence.storageClassName=dags \
--set global.storageClass=data \
--set redis.persistence.storageClassName=redis-db \
--set workers.persistence.storageClassName=worker \
apache-airflow/airflow --namespace airflow 

kubectl patch svc airflow-webserver -n airflow -p '{"spec": {"type": "NodePort"}}'

#--set logs.persistence.enabled=true  --set logs.persistence.existingClaim=logs  \
#kubectl exec -it airflow-worker-0 -n airflow -- /bin/sh
#airflow users  create --role Admin --username jpoley --email admin --firstname admin --lastname admin --password encrytped

