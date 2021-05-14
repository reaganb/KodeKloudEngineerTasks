kubectl apply -f redis-pvs.yaml
# persistentvolume/redis-pv-01 created
# persistentvolume/redis-pv-02 created
# persistentvolume/redis-pv-03 created
# persistentvolume/redis-pv-04 created
# persistentvolume/redis-pv-05 created
# persistentvolume/redis-pv-06 created

kubectl get cm redis-cluster-configmap
# NAME                      DATA   AGE
# redis-cluster-configmap   #      ##m


kubectl describe cm redis-cluster-configmap
# Name:         redis-cluster-configmap
# Namespace:    default
# Labels:       <none>
# Annotations:  <none>
#
# Data
# ====
# redis.conf:
# ----
# cluster-enabled yes
# cluster-require-full-coverage no
# cluster-node-timeout 15000
# cluster-config-file /data/nodes.conf
# cluster-migration-barrier 1
# appendonly yes
# protected-mode no
# update-node.sh:
# ----
# #!/bin/sh
# REDIS_NODES="/data/nodes.conf"
# sed -i -e "/myself/ s/[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}/${POD_IP}/" ${REDIS_NODES}
# exec "$@"
#
# Events:  <none>

kubectl apply -f redis-cluster-svc.yaml

kubectl apply -f redis-cluster-statefulset.yaml

kubectl get statefulset
# NAME            READY   AGE
# redis-cluster   6/6     ##s

kubectl get pods

kubectl exec -it redis-cluster-0 -- redis-cli \
  --cluster create \
  --cluster-replicas 1 $(kubectl get pods -l app=redis-cluster -o jsonpath='{range.items[*]}{.status.podIP}:6379 {end}')
# .........................
# Can I set the above configuration? (type 'yes' to accept): yes
# .........................
# [OK] All nodes agree about slots configuration.
# >>> Check for open slots...
# >>> Check slots coverage...
# [OK] All 16384 slots covered.