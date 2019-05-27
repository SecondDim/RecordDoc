#

[官方 Labels and Selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/)

```bash
$ kubectl get pods --show-labels

$ kubectl get all --all-namespaces

$ kubectl set image deploy/hello-deployment my-pod=192.168.1.204:5000/node_app:v2 --record
$ kubectl rollout status deploy hello-deployment
$ kubectl rollout undo deployment hello-deployment
$ kubectl edit deploy hello-deployment
$ kubectl rollout history deploy hello-deployment
```

## Deployment commond

```bash
# 取得 Kubernetes 所有可知支援資源
kubectl api-resources

# 取得目前 Kubernetes 中的 deployments 的資訊
$ kubectl get deployments

# 取得目前 Kubernetes 中的 Replication Set 的資訊
$ kubectl get rs

# 取得特定 deployment 的詳細資料
$ kubectl describe deploy <deployment-name>

# 將 deployment 管理的 pod 升級到特定 image 版本
$ kubectl set image deploy/ <deployment-name> <pod-name>: <image-path>: <version>

# 編輯特定 deployment 物件
$ kubectl edit deploy <deployment-name>

# 查詢目前某 deployment 升級狀況
$ kubectl rollout status deploy <deployment-name>

# 查詢目前某 deployment 升級的歷史紀錄
$ kubectl rollout history deploy <deployment-name>

# 回滾 Pod 到先前一個版本
$ kubectl rollout undo deploy <deployment-name>

# 回滾 Pod 到某個特定版本
$ kubectl rollout undo deploy <deployment-name> --to-revision=n
```
