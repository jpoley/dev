echo "Installing Rust"
cp /root/.bashrc /root/brc.temp
whoami
su - vagrant
whoami 
cd /home/vagrant
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rust.sh
chmod +x rust.sh
./rust.sh -y
mv /root/.cargo /home/vagrant/
mv /root/.rustup /home/vagrant/
chown -R vagrant /home/vagrant/.cargo
cp /root/brc.temp /root/.bashrc
echo 'PATH=$PATH:.cargo/bin' >> /home/vagrant/.bashrc
#source $HOME/.cargo/env
