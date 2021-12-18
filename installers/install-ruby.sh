
echo "Install Ruby"
sudo gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
sudo apt-get install software-properties-common
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm -y
sudo usermod -a -G rvm $USER
sudo usermod -a -G rvm vagrant
su - vagrant
echo 'source /etc/profile.d/rvm.sh' >> /home/vagrant/.bashrc
source /etc/profile.d/rvm.sh
rvm user gemsets
rvm install ruby-3.0.0
rvm install ruby-2.6.6
rvm --default use 2.6.6
echo 'rvm user gemsets' >> /home/vagrant/.bashrc
echo 'rvm --default use 2.6.6' >> /home/vagrant/.bashrc
source /home/vagrant/.bashrc