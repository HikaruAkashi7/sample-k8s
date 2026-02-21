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

---

## リソースの検索・調査 (Search & Investigation)

Kubernetesクラスター内のリソースを検索・調査するための代表的なコマンドを紹介します。

### すべてのリソースを一覧表示
```bash
kubectl get all
```

### ラベルでPodを検索
```bash
kubectl get pods -l app=my-web
```

### Pod の詳細情報を調査
```bash
kubectl describe pod <pod-name>
```

### Deployment の詳細情報を調査
```bash
kubectl describe deployment nginx-deployment
```

### Service の詳細情報を調査
```bash
kubectl describe service nginx-service
```

### Pod のログを確認
```bash
kubectl logs <pod-name>
```

### リアルタイムでログを追跡
```bash
kubectl logs -f <pod-name>
```

### リソース使用状況を調査
```bash
kubectl top pods
kubectl top nodes
```

### Podの中に入って調査
```bash
kubectl exec -it <pod-name> -- /bin/bash
```

### すべての名前空間のリソースを検索
```bash
kubectl get all --all-namespaces
```

### YAMLでリソース定義を確認
```bash
kubectl get deployment nginx-deployment -o yaml
kubectl get service nginx-service -o yaml
```

### スクリプトで一括調査

このリポジトリの `investigate.sh` を使うと、クラスター全体の状態を一括で確認できます。

```bash
bash investigate.sh
```

