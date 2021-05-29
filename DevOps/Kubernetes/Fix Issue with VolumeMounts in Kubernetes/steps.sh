
# Issue: Cannot query root url of nginx
kubectl exec -it nginx-phpfpm -c nginx-container -- curl -I localhost:8099/
# HTTP/1.1 404 Not Found
# Server: nginx/1.21.0
# Date: XXX, ## XX #### ##:##:## GMT
# Content-Type: text/html
# Content-Length: 153
# Connection: keep-alive

kubectl delete -f nginx-phpfpm-pod.yaml

kubectl apply -f nginx-phpfpm-pod.yaml

kubectl cp /tmp/index.php nginx-phpfpm:/var/www/html/ -c nginx-container

# Fixed
kubectl exec -it nginx-phpfpm -c nginx-container -- curl -I localhost:8099/
# HTTP/1.1 200 OK
# Server: nginx/1.21.0
# Date: XXX, ## XXX #### ##:##:## GMT
# Content-Type: text/html; charset=UTF-8
# Connection: keep-alive
# X-Powered-By: PHP/7.2.34


