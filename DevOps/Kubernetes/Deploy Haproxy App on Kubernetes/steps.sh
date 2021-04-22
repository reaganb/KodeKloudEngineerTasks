kubectl create ns haproxy-controller-xfusion

kubectl create -f haproxy-service-account.yml

cat /tmp/rules.yml >> haproxy-cluster-role.yml && kubectl create -f haproxy-cluster-role.yml

kubectl create -f haproxy-cluster-role-binding.yml

kubectl create -f backend-deployment.yml

kubectl create -f service-backend.yml

kubectl create -f haproxy-ingress.yml

kubectl create -f ingress-service.yml


