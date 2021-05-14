kubect describe pod webserver | grep image
#  Image:          httpd:latests
#  Image:         ubuntu:latest

kubectl set image pod webserver httpd-container=httpd:latest

kubectl get pods
# NAME        READY   STATUS    RESTARTS   AGE
# webserver   2/2     Running   0          #####
