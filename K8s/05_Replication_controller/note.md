#

```bash
# get replicationcontroller
$ kubectl get replicationcontroller

# get describe
$ kubectl describe replicationcontroller

# scale
$ kubectl scale --replicas=4 -f ./my-replication-controller.yaml

# delete replicationcontroller without stop pods
$ kubectl delete rc my-replication-controller --cascade=false

# delete  pods immediately
$ kubectl delete pods <pod> --grace-period=0 --force
```
