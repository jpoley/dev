
kubeadm init --apiserver-advertise-address="192.168.50.10" --apiserver-cert-extra-sans="192.168.50.10"  --node-name dev --pod-network-cidr=192.168.0.0/16 --v=6
kubectl taint nodes $(hostname) node-role.kubernetes.io/master:NoSchedule