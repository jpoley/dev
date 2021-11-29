echo "Installing Python"
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev wget -y
cd /tmp
curl https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz -o Python-3.10.0.tgz
tar -xvzf Python-3.10.0.tgz
cd Python-3.10.0
./configure --enable-optimizations
sudo make install
