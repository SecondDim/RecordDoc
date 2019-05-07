#! /bin/sh

# Start minikube
minikube start

# Exec hello-minikube app
kubectl run hello-minikube --image=gcr.io/google_containers/echoserver:1.8 --port=8080
kubectl expose deployment hello-minikube --type=NodePort
minikube service hello-minikube --url

