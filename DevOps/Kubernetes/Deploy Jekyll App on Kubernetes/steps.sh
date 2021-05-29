kubectl create ns jekyll-namespace-devops

kubect apply -f jekyll-site-pvc.yaml

kubectl apply -f jekyll-pod.yaml

kubectl apply -f jekyll-service.yaml

# Click + > Select Port to View on Host 2 > Input 31181 > Display Port
