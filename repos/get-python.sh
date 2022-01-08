cd 
HOME=$(pwd)
SRC_HOME=$HOME/2022/src
mkdir -p $SRC_HOME/python && cd $SRC_HOME/python

git clone https://github.com/apache/airflow.git
git clone https://github.com/google/python-fire.git
git clone https://github.com/aws-containers/Airflow-on-Fargate.git

