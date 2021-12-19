IMAGE_NAME = "bento/ubuntu-20.04"
N = 2

Vagrant.configure("2") do |config|
    config.ssh.insert_key = false

    config.vm.provider "virtualbox" do |v|
        v.memory = 6000 
        v.cpus = 2
    end
      
    config.vm.define "dev" do |master|
        master.vm.box = IMAGE_NAME
        master.vm.network "private_network", ip: "192.168.56.10"
        master.vm.hostname = "dev"
        master.vm.provision "shell", path: "dev.sh"       
        master.vm.provision "shell", path: "installers/install-node.sh", privileged: false   
        master.vm.provision "shell", path: "installers/install-rust.sh" ,privileged: false    
        master.vm.provision "shell", path: "installers/install-python.sh" ,privileged: false  
        master.vm.provision "shell", path: "installers/install-go.sh"  
        master.vm.provision "shell", path: "installers/install-ruby.sh" 
        master.vm.provision "shell", path: "repos/get-go.sh" 
        master.vm.provision "shell", path: "repos/get-rust.sh"      

        # fix docker containerd     
        master.vm.provision "shell", path: "installers/get-helm.sh"      
        master.vm.provision "shell", path: "platforms/get-etcdctl.sh"
        master.vm.provision "shell", path: "platforms/install-cks-cli.sh"  
        master.vm.provision "shell", path: "platforms/kube-prepare.sh"
        master.vm.provision "shell", path: "platforms/kube-install.sh"
        master.vm.provision "shell", path: "platforms/install-calico.sh"
        master.vm.provision "shell", path: "platforms/install-kubectl.sh" ,privileged: false  

        master.vm.provision "shell", path: "platforms/install-airflow.sh" ,privileged: false  
        master.vm.provision "shell", path: "platforms/install-argo.sh" ,privileged: false  

        master.vm.synced_folder "installers/",  "/home/vagrant/installers"
        master.vm.synced_folder "repos/",  "/home/vagrant/repos"
        master.vm.synced_folder "platforms/",  "/home/vagrant/platforms"
       master.vm.synced_folder "src/",  "/home/vagrant/src"

    end

end
