# Tarea 2

---

## 1. Deploying Kubernetes single and multinode:

### Scripts utilizados

+ Instalar minikube y kubectl en Windows:

New-Item -Path 'c:\' -Name 'minikube' -ItemType Directory -Force

Invoke-WebRequest -OutFile 'c:\minikube\minikube.exe' -Uri 'https://github.com/kubernetes/minikube/releases/latest/download/minikube-windows-amd64.exe' -UseBasicParsing

$oldPath = [Environment]::GetEnvironmentVariable('Path', [EnvironmentVariableTarget]::Machine)

if ($oldPath.Split(';') -inotcontains 'C:\minikube'){ `
  [Environment]::SetEnvironmentVariable('Path', $('{0};C:\minikube' -f $oldPath), [EnvironmentVariableTarget]::Machine)
}

+ Inciar cluster con 1 nodo:
  minikube start
  
+ Iniciar cluster con 2 nodos:

  minikube start --nodes 2 -p multinode-demo

### Capturas

+ 1.1

kubectl cluster-info

![image](https://user-images.githubusercontent.com/40249960/191135882-891226f7-c5e3-492c-8a2d-0466e91d6bd5.png)

kubectl get nodes -owide

![image](https://user-images.githubusercontent.com/40249960/191135677-4f13de91-fb76-44d4-85d8-bd7810a1a1cd.png)
  
  
+ 1.2
  
kubectl cluster-info

![image](https://user-images.githubusercontent.com/40249960/191136326-95c9351c-20e4-4db3-aa28-f9b972a3f1bd.png)

kubectl get nodes -owide

![image](https://user-images.githubusercontent.com/40249960/191136361-53c00c4a-b05f-47d9-ba00-e4b575acc37e.png)
