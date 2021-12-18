echo "Installing Rust"
cd /home/vagrant
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rust.sh
chmod +x rust.sh
./rust.sh -y
chown -R vagrant /home/vagrant/.cargo
echo 'PATH=$PATH:.cargo/bin' >> /home/vagrant/.bashrc
source $HOME/.cargo/env
