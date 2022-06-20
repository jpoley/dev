kubectl create namespace crossplane-system
helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo update
helm install crossplane --namespace crossplane-system crossplane-stable/crossplane
curl -sL https://raw.githubusercontent.com/crossplane/crossplane/master/install.sh | sh
