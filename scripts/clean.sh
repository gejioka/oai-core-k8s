# Delete network-attachment-definition for all the components
kubectl delete network-attachment-definition.k8s.cni.cncf.io prod-oai-external-v1
kubectl delete network-attachment-definition.k8s.cni.cncf.io prod-oai-s11c-v1
kubectl delete network-attachment-definition.k8s.cni.cncf.io prod-oai-s1c-v1
kubectl delete network-attachment-definition.k8s.cni.cncf.io prod-oai-s1u-v1
kubectl delete network-attachment-definition.k8s.cni.cncf.io prod-oai-s6a-v1
kubectl delete network-attachment-definition.k8s.cni.cncf.io prod-oai-sx-v1

# Delete all deployments
kubectl delete deployment prod-cassandra-v1
kubectl delete deployment prod-oai-enb-v1
kubectl delete deployment prod-oai-hss-v1
kubectl delete deployment prod-oai-mme-v1
kubectl delete deployment prod-oai-spgwc-v1
kubectl delete deployment prod-oai-spgwu-tiny-v1
