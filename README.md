# README Tarea 2
## Aplicacion de registro de mensajes

Esta aplicación registra una cadena de texto introducida por los usuarios. Es escalable y robusta al contar con replicas del servicio front-end y un follower del pod Lider de Redis.

---

## Objetivo

Demostrar la funcionalidad y los usoso de los seguidores de Redis y las réplicas (escalabilidad) de los servicios de kubernetes.

## Desarrollo

Se escogió esta aplicación simple por el poco poder de cómputo de la máquina host. En primera instancia pensaba desplegar un modelo de ML usando Kubeflow. Sin embargo, el preprocesado de los datos requería al menos un par más de pods, lo cual haría inestable al procesador (dual core) de la máquina host).

Uso de recursos de la máquian host después del deployment de esta app:

![image](https://user-images.githubusercontent.com/40249960/191154482-0a87dd26-a526-4faa-8814-2fcd276dea41.png)

### Diagrama de alto nivel

![image](https://user-images.githubusercontent.com/40249960/191155094-19e66bcf-5a3d-479a-88f3-efbe42f9e9ce.png)

Cada vez que la aplicación reciba los datos del formularo del guestbook (front-end), el nodo lider de Redis guardará la cadena de texto enviada y sus nodos followers copiarán lo mismo.  

### Diagrama de bajo nivel

![image](https://cloud.google.com/static/kubernetes-engine/images/guestbook_diagram.svg)

Como se observa en la imagen, además de tener un pod que representa el nodo follower, se posee un balance de carga. Es por esto que se tienen 3 réplicas del servidor web front-end:

![image](https://user-images.githubusercontent.com/40249960/191155526-d4272c83-01a0-41e0-a099-d16f4b4f91ce.png)

Referencias:

+ https://kubernetes.io/docs/tutorials/stateless-application/guestbook/ 
+ https://cloud.google.com/static/kubernetes-engine/images/guestbook_diagram.svg
