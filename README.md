# pacific-trino

Preparation: 
#1 download required tars and jars , put it under ./jars
	. zulu17.44.15-ca-jdk17.0.8-linux_x64.zip
	. trino-server-397.tar.gz
	. trino-cli-397-executable.jar
#2 minikube or other k8s cluster installed
#3 docker installed


Setup Instruciton

Step 1: Build base ubuntu 22.04 image

	# build -f ./dockerfile/dockerfile.22 -t ubuntu:22.04 .

Step 2: Build base Trino 397 image

	# build -f ./dockerfile/dockerfile.trino-397 -t trino:397 .

Step 3: Load the  trino:397 image into k8s

	# docker save -o trino.tar trino:397
	# minikube image load trino.tar

Step 4: Deploy trino pods

	# chmod u+x ./start.sh
	# ./start.sh
	
Step 5: port-forward for access the trino 

	you have to wait until all those pods up and running, until you see server is up.
	# kubectl get all
	# kubectl logs [coordinator-pod-name] -f
	# kubectl logs [work-pod-name] -f
	# kubectl port-forward svc/trino-coordinator 8080 --address='0.0.0.0'


