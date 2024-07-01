Namespace

By default, every kubectl command uses default namespace

- organize resources 
- Virtual Cluster inside cluster
- there are 4 default namespace
  - default : contains all the resources that you create (without specifying namespace)
  - kube-system : Shouldn't be altered. They have system processes
  - kube-public : Publicly accessible data (configmap)
  - kube-node-lease : Each node has lease object. Determines availability of node

kubectl get namespace

New namespace can be created in cluster
kubectl create namespace

Can be applied via
1. kubectl apply -f abc.yaml --namespace=<namespace_name>
2. In yaml file (preferred)
  metadata:
    namespace: <namespace_name>

When you want to get any components of specific namespace, use
kubectl get deployment -n <namespace_name>

To change the active namespace, need to use kubens by installing kubectx


