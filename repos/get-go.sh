cd 
HOME=$(pwd)
SRC_HOME=$HOME/2022/src
mkdir -p $SRC_HOME/go && cd $SRC_HOME/go

git clone https://github.com/ethereum/go-ethereum.git
git clone https://github.com/kubernetes/kubernetes.git
git clone https://github.com/rclone/rclone.git
git clone https://github.com/helm/helm.git
git clone https://github.com/awslabs/goformation.git
git clone https://github.com/web3coach/the-blockchain-bar.git
git clone https://github.com/GoogleCloudPlatform/golang-samples.git
git clone https://github.com/ardanlabs/service.git