IMAGE_NAME = "bento/ubuntu-20.04"
N = 2

Vagrant.configure("2") do |config|
    config.ssh.insert_key = false

    config.vm.provider "virtualbox" do |v|
        v.memory = 6000 
        v.cpus = 2
    end
      
    config.vm.define "dev" do |dev|
        dev.vm.box = IMAGE_NAME
        dev.vm.network "private_network", ip: "192.168.56.10"
        dev.vm.hostname = "dev"
        dev.vm.provision "shell", path: "dev.sh"       
        #dev.vm.provision "shell", path: "installers/install-node.sh", privileged: false   
        dev.vm.provision "shell", path: "installers/install-rust.sh" ,privileged: false    
        dev.vm.provision "shell", path: "installers/install-python.sh" ,privileged: false  
        dev.vm.provision "shell", path: "installers/install-go.sh"  
        dev.vm.provision "shell", path: "installers/install-ruby.sh" 
   

        # fix docker containerd     
        dev.vm.provision "shell", path: "platforms/get-etcdctl.sh"
        dev.vm.provision "shell", path: "platforms/install-cks-cli.sh"  
        dev.vm.provision "shell", path: "platforms/kube-prepare.sh"
        dev.vm.provision "shell", path: "platforms/kube-install.sh"
        dev.vm.provision "shell", path: "platforms/install-calico.sh"
        dev.vm.provision "shell", path: "platforms/install-kubectl.sh" ,privileged: false  
        dev.vm.provision "shell", path: "platforms/install-argo.sh" ,privileged: false
        dev.vm.provision "shell", path: "installers/get-helm.sh"
        dev.vm.provision "shell", path: "platforms/install-airflow.sh" ,privileged: false  
        dev.vm.provision "shell", path: "platforms/dataflow.sh", privileged: false
        dev.vm.synced_folder "installers/",  "/home/vagrant/installers"
        dev.vm.synced_folder "platforms/",  "/home/vagrant/platforms"
        dev.vm.synced_folder "src/",  "/home/vagrant/src"
        
        # dev.vm.network "forwarded_port", guest:8080 , host: 8080
        # dev.vm.network "forwarded_port", guest:2746 , host: 2746
        # dev.vm.network "forwarded_port", guest:443 , host: 8443

    end

end
