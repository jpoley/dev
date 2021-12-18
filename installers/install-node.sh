#https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04
#
if [ "$EUID" -e 0 ]
then
   echo "i am root"
   su - vagrant
fi
echo "installing node"
curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh -o /home/vagrant/install.sh
cd /home/vagrant
chown vagrant install.sh
chmod +x install.sh
/home/vagrant/install.sh
#mv /root/.nvm /home/vagrant
#chown -R vagrant /home/vagrant/.nvm
export NVM_DIR="/home/vagrant/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /home/vagrant/.bashrc
#nvm list-remote
nvm install v16.13.1



