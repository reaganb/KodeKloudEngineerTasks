kubectl get deployments
# NAME               READY   UP-TO-DATE   AVAILABLE   AGE
# nginx-deployment   3/3     3            3           8m33s

kubectl edit deployments nginx-deployment
# Find
# - image: nginx:1.*
# Replace with
# - image: nginx:1.19

kubectl get deployments nginx-deployment
# NAME               READY   UP-TO-DATE   AVAILABLE   AGE
# nginx-deployment   3/3     3            3           11m

# Another way
kubectl set image deployment nginx-deployment nginx-container=nginx:1.19

kubectl get deployments nginx-deployment
# NAME               READY   UP-TO-DATE   AVAILABLE   AGE
# nginx-deployment   3/3     3            3           11m
