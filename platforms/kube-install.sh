mkdir -p /var/lib/kubelet
cp /home/vagrant/platforms/config.yaml /var/lib/kubelet/config.yaml
kubeadm init 
#--apiserver-advertise-address="192.168.50.10" --apiserver-cert-extra-sans="192.168.50.10"  --node-name dev --pod-network-cidr=192.168.0.0/16 --v=6
#--config kubeadm-config.yaml 
chmod 644 /lib/systemd/system/kubelet.service
su - vagrant
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl taint node dev node-role.kubernetes.io/master:NoSchedule-
kubectl taint node dev node-role.kubernetes.io/control-plane:NoSchedule-