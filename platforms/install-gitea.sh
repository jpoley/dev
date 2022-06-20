helm repo add gitea-charts https://dl.gitea.io/charts/
helm repo update
helm install gitea gitea-charts/gitea