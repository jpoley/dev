kubectl delete ns airflow --force
kubectl delete -f /home/vagrant/platforms/pv1.yaml
kubectl delete -f /home/vagrant/platforms/pv2.yaml
kubectl delete -f /home/vagrant/platforms/pv3.yaml
kubectl delete -f /home/vagrant/platforms/pv-log.yaml
kubectl delete -f /home/vagrant/platforms/pv-dag.yaml