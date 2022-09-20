# Scripts que se usaron para construir la app (fuente: https://kubernetes.io/docs/tutorials/stateless-application/guestbook/)

# configurar el servidor redis (lider y follower)
kubectl apply -f https://k8s.io/examples/application/guestbook/redis-leader-deployment.yaml

kubectl apply -f https://k8s.io/examples/application/guestbook/redis-leader-service.yaml

kubectl apply -f https://k8s.io/examples/application/guestbook/redis-follower-deployment.yaml

kubectl apply -f https://k8s.io/examples/application/guestbook/redis-follower-service.yaml

# configurar el frontend en PHP

kubectl apply -f https://k8s.io/examples/application/guestbook/frontend-deployment.yaml

kubectl apply -f https://k8s.io/examples/application/guestbook/frontend-service.yaml

# servir la aplicacion en la red local

kubectl port-forward svc/frontend 8080:80
