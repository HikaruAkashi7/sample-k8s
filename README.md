## Install kind and kubectl
```bash
brew install kind kubectl
```


## Create Cluster 
```bash
kind create cluster --name sample-k8s
```
### Output
```bash
Creating cluster "sample-k8s" ...
 ✓ Ensuring node image (kindest/node:v1.35.0) 🖼 
 ✓ Preparing nodes 📦  
 ✓ Writing configuration 📜 
 ✓ Starting control-plane 🕹️ 
 ✓ Installing CNI 🔌 
 ✓ Installing StorageClass 💾 
Set kubectl context to "kind-sample-k8s"
You can now use your cluster with:

kubectl cluster-info --context kind-sample-k8s

Have a question, bug, or feature request? Let us know! https://kind.sigs.k8s.io/#community 🙂
```

## Check 
```bash
kubectl cluster-info --context kind-sample-k8s
```


## Create NGINX
```bash
kubectl run nginx --image=nginx
```

### OutPut
```bash
pod/nginx created
```

## Check Pods
```bash
kubectl get pods
```

### OutPut
```bash
NAME    READY   STATUS              RESTARTS   AGE
nginx   0/1     ContainerCreating   0          5s
```

