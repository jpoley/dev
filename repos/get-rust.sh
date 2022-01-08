cd 
HOME=$(pwd)
SRC_HOME=$HOME/2022/src
mkdir -p $SRC_HOME/rust && cd $SRC_HOME/rust

git clone https://github.com/RustScan/RustScan.git
git clone https://github.com/kpcyrd/sniffglue.git
git clone https://github.com/softprops/dynomite.git
git clone https://github.com/jimmycuadra/rust-etcd.git
git clone https://github.com/rusqlite/rusqlite.git
git clone https://github.com/sfackler/rust-postgres.git
git clone https://github.com/tokio-rs/tokio.git
git clone https://github.com/bottlerocket-os/bottlerocket.git
git clone https://github.com/firecracker-microvm/firecracker.git
git clone https://github.com/hyperium/tonic.git
git clone https://github.com/hyperium/hyper.git
git clone https://github.com/awslabs/aws-sdk-rust.git
git clone https://github.com/tokio-rs/tracing.git
git clone https://github.com/solana-labs/solana.git