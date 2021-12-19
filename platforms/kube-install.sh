
kubeadm init 
#--apiserver-advertise-address="192.168.50.10" --apiserver-cert-extra-sans="192.168.50.10"  --node-name dev --pod-network-cidr=192.168.0.0/16 --v=6
#--config kubeadm-config.yaml 
#curl https://docs.projectcalico.org/manifests/calico.yaml -O
#kubectl apply -f calico.yaml
mkdir -p /var/lib/kubelet
cp /home/vagrant/platforms/config.yaml /var/lib/kubelet/config.yaml
su - vagrant
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config