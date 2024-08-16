username=$1
password=$2

# Create secret token
echo -n "$username:$password" | base64

# Need to replace the auth with the new one which is the output of the previous command
echo -n '{"auths":{"registry.gitlab.com":{"username":"$username","password":"$password","email":"ge.tziokas@gmail.com","auth":"Z2VqaW9rYTolZ2UyNjMxMg=="}}}' | base64 -w 0

kubectl apply -f docker-registry-secret.yaml
kubectl apply -f prod-cassandra-configmap.yaml

kubectl apply -f network-prod-oai-cass-v1.yaml
kubectl apply -f network-prod-oai-s6a-v1.yaml
kubectl apply -f network-prod-oai-s11c-v1.yaml
kubectl apply -f network-prod-oai-s1c-v1.yaml
kubectl apply -f network-prod-oai-s1u-v1.yaml
kubectl apply -f network-prod-oai-sx-v1.yaml
kubectl apply -f network-prod-oai-external.yaml

kubectl apply -f prod-cassandra-v1-deployment.yaml
kubectl apply -f prod-hss-v1-deployment.yaml
kubectl apply -f prod-mme-v1-deployment.yaml
kubectl apply -f prod-spgwc-v1-deployment.yaml
kubectl apply -f prod-spgwu-tiny-v1-deployment.yaml
