#https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04
echo "installing node"
#curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
#sudo bash nodesource_setup.sh
#sudo apt install nodejs

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
source ~/.bashrc

nvm install v16.13.0



