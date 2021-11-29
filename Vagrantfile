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
        #master.vm.provision "shell", path: "installers/install-rust.sh"      
        #master.vm.provision "shell", path: "repos/get-rust.sh"      
        #master.vm.provision "shell", path: "installers/install-go.sh"     
        #master.vm.provision "shell", path: "repos/get-go.sh"      

        #master.vm.provision "shell", path: "installers/install-python.sh"    
        #master.vm.provision "shell", path: "installers/get-etcdctl.sh"
        #master.vm.provision "shell", path: "installers/kube-prepare.sh"
        master.vm.provision "shell", path: "installers/install-ruby.sh"  
        master.vm.provision "shell", path: "installers/install-python.sh"          
        master.vm.provision "shell", path: "installers/install-node.sh"      
    
        master.vm.synced_folder "installers/",  "/home/vagrant/installers"
        master.vm.synced_folder "repos/",  "/home/vagrant/repos"

    end

end
