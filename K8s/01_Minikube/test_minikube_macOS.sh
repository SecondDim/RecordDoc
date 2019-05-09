#! /bin/sh

# Start minikube
minikube start
# minikube start --insecure-registry "192.168.1.204:5000"

# Exec hello-minikube app
kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.8 --port=8080
kubectl expose deployment hello-minikube --type=NodePort
minikube service hello-minikube --url

#****************
# minikube delete
# minikube ssh
