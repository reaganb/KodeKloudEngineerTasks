kubectl create ns httpd-namespace-nautilus

kubectl apply -f httpd-deployment.yaml
kubectl apply -f httpd-service.yaml

kubectl get deployment -n httpd-namespace-nautilus
# NAME                        READY   UP-TO-DATE   AVAILABLE   AGE
# httpd-deployment-nautilus   4/4     4            4           #####

kubectl get service -n httpd-namespace-nautilus
# NAME                     TYPE       CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
# httpd-service-nautilus   NodePort   10.101.86.173   <none>        80:30004/TCP   ##s

# Click + > Select Port to view on Host 1 > Input Node port "30004" > Web Page Pops up > Says "It works!"
