echo "Installing Go"

wget -q https://go.dev/dl/go1.17.3.linux-amd64.tar.gz 
tar -C /usr/local -xzf go1.17.3.linux-amd64.tar.gz
echo 'PATH=$PATH:/usr/local/go/bin' >> /home/vagrant/.bashrc
