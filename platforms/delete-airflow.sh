kubectl delete ns airflow --force
kubectl delete -f /home/vagrant/platforms/pv1.yaml
kubectl delete -f /home/vagrant/platforms/pv2.yaml
kubectl delete -f /home/vagrant/platforms/pv-worker.yaml
kubectl delete -f /home/vagrant/platforms/pv-dag.yaml
kubectl delete -f /home/vagrant/platforms/sc.yaml
kubectl delete -f /home/vagrant/platforms/sc2.yaml
kubectl delete -f /home/vagrant/platforms/sc3.yaml
sudo rm -rf /bitnami
sudo rm -rf /opt/k8s
