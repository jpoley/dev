
curl https://raw.githubusercontent.com/argoproj-labs/argo-dataflow/main/config/quick-start.yaml -o argo-dataflow.yaml
curl https://raw.githubusercontent.com/argoproj-labs/argo-dataflow/main/config/apps/kafka.yaml -o kafka.yaml
curl https://raw.githubusercontent.com/argoproj-labs/argo-dataflow/main/examples/dataflow-kafka-default-secret.yaml -o kafka-by-default.yaml

kubectl apply -f argo-dataflow.yaml
kubectl apply -f kafka.yaml
kubectl apply -f kafka-by-default.yaml
