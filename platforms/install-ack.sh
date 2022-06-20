export HELM_EXPERIMENTAL_OCI=1
export SERVICE=$1
export RELEASE_VERSION=`curl -sL https://api.github.com/repos/aws-controllers-k8s/${SERVICE}-controller/releases/latest | grep '"tag_name":' | cut -d'"' -f4`
export CHART_EXPORT_PATH=/tmp/chart
export CHART_REF=$SERVICE-chart
export CHART_REPO=public.ecr.aws/aws-controllers-k8s/$CHART_REF
export CHART_PACKAGE=$CHART_REF-$RELEASE_VERSION.tgz

mkdir -p $CHART_EXPORT_PATH

helm pull oci://$CHART_REPO --version $RELEASE_VERSION -d $CHART_EXPORT_PATH
tar xvf $CHART_EXPORT_PATH/$CHART_PACKAGE -C $CHART_EXPORT_PATH

export ACK_SYSTEM_NAMESPACE=ack-system
export AWS_REGION=us-west-2

helm install --create-namespace --namespace $ACK_SYSTEM_NAMESPACE ack-$SERVICE-controller \
    --set aws.region="$AWS_REGION" \
    $CHART_EXPORT_PATH/$SERVICE-chart