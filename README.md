# Kubernetes Architecture Diagram:
![k8sarch](https://user-images.githubusercontent.com/31984052/37555503-0b29e8fc-2a0e-11e8-8704-29b8a01eaa4a.png)

Kubernetes components:


Master Node: 

  API server - Used for configuring workloads.Acts as bridge between components to maintain cluster health.
  Scheduler  - Used for tracking resource utilisation on each node and assign workloads accordingly.
  Controller Manager - Its checks for changes in API server and controls the scaling up/down of application.
  Etcd  - Its a distributed key-value store of configuration data used by all nodes in cluster.

Nodes:

  kubelet - This service communicates with master to receive commands and work. 
  kube-proxy - It makes services available to external.It forwards requests to correct containers.
  
  
Overlay Network: (Flannel/Weave/Calico/OpenVswitch) 

  This  virtual network gives a subnet to  each host to use with container runtimes.
  Each Pod has a unique routable IP inside cluster to reduce complexity off port mapping.

helm Charts: 

  Used for application management in kubernetes which performs tasks like install,upgrade.

Kubeadm: 
  Kubernetes cluster installation tool.

Kubectl: 
  kubectl is a command line interface for running commands against Kubernetes clusters.

Kubernetes can be setup on  clustermode or Minikube(single node).

Kubernetes Dashboard:
   Graphical interace to monitor and manage cluster.
