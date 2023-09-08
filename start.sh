#!/usr/bin/env sh


kubectl delete -f ./trino-cfgs.yaml
kubectl delete -f ./trino-coordinator-service.yaml
kubectl delete -f ./trino-coordinator-deployment.yaml
# kubectl delete -f ./trino-worker-service.yaml
kubectl delete -f ./trino-worker-deployment.yaml

kubectl apply -f ./trino-cfgs.yaml
kubectl apply -f ./trino-coordinator-service.yaml
kubectl apply -f ./trino-coordinator-deployment.yaml
# kubectl apply -f ./trino-worker-service.yaml
kubectl apply -f ./trino-worker-deployment.yaml
