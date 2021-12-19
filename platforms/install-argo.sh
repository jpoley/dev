curl https://raw.githubusercontent.com/argoproj/argo-workflows/master/manifests/quick-start-postgres.yaml -o argo-wf.yaml
curl https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml -o argo-cd.yaml
curl https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/eventbus/native.yaml -o argo-events.yaml
curl https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/event-sources/webhook.yaml -o argo-webhook.yaml

kubectl create ns argo-workflow
kubectl create ns argo-cd

kubectl apply -f argo-cd.yaml -n argo-cd
kubectl apply -f argo-wf.yaml -n argo-workflow


kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'
kubectl patch svc argo-server -n argo -p '{"spec": {"type": "NodePort"}}'

#kubectl port-forward svc/argocd-server -n argocd 8080:443
#kubectl -n argo port-forward deployment/argo-server 2746:2746
#kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d
