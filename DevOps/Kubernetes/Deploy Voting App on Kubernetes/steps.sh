kubectl create ns vote

kubectl apply -f vote-deployment.yaml
kubectl apply -f vote-service.yaml

kubectl apply -f redis-deployment.yaml
kubectl apply -f redis-service.yaml

kubectl apply -f worker-deployment.yaml

kubectl apply -f db-deployment.yaml
kubectl apply -f db-service.yaml

kubectl apply -f result-deployment.yaml
kubectl apply -f result-service.yaml

kubectl get deployments -n vote
# NAME                READY   UP-TO-DATE   AVAILABLE   AGE
# db-deployment       1/1     1            1           ###
# redis-deployment    1/1     1            1           ###
# result-deployment   1/1     1            1           ###
# vote-deployment     1/1     1            1           ###
# worker              1/1     1            1           ###
