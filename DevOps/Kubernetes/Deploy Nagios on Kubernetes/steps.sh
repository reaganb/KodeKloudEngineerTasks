kubectl apply -f deployment.yaml

kubectl get pods
# NAME                                 READY   STATUS    RESTARTS   AGE
# nagios-deployment-74ccd9c66d-pwb7v   1/1     Running   0          9m39s

kubectl exec -it nagios-deployment-74ccd9c66d-pwb7v bash

htpasswd /opt/nagios/etc/htpasswd.users xFusionCorp
# New password: LQfKeWWxWD
# Re-type new password: LQfKeWWxWD
# Adding password for user xFusionCorp

kubectl apply -f service.yaml

# Click "+" > Select port to view on Host 1 > Input 30008 > Input user and password (xFusionCorp and LQfKeWWxWD)
