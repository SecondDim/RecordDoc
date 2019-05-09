# 步驟

```bash
# Start pods
kubectl create -f my-first-pod.yaml

# Create service and expose it
$ kubectl expose pod my-pod --type=NodePort --name=my-pod-service
$ kubectl get services
$ minikube service my-pod-service --url
```

## 常用指令
```bash
# 取得 Kubernetes Cluster 中所有正在運行的 Pods 的資訊
$ kubectl get pods
$ kubectl get pods --show-all

# 取得 Pod 的詳細資料
$ kubectl describe pod <pod>

# 建立 Service 物件並將 Pod 中指定的 port number expose 出來讓外部存取
$ kubectl port-forward <pod> <external-port>:<pod-port>

# 將 Pod 中指定的 port number mapping 到外部指定的 port number
$ kubectl port-forward <pod> <external-port>:<pod-port>

# attach & exec
$ kubectl attach <pod> -i
$ kubectl exec <pod> -- <command>
```
