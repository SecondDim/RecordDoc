#

```bash
$ kubectl expose deploy hello-deployment --type=NodePort --name=my-deployment-service

$ kubectl create -f ./my-service.yaml

$ kubectl run -i --tty alpine --image=alpine --restart=Never -- sh

$ minikube service hello-service --url
```
