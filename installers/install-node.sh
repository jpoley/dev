#https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04
echo "installing node"
curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh -o /home/vagrant/install.sh
chown vagrant install.sh
chmod +x install.sh
./install.sh
mv /root/.nvm /home/vagrant
chown -R vagrant /home/vagrant/.nvm
export NVM_DIR="/home/vagrant/.nvm"
su - vagrant
source /home/vagrant/.bashrc
#nvm list-remote
#nvm install v16.13.1



