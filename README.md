# k8s-hostpath-vagrant-kubeadm
Cluster Kubernetes Homelab

# Kubernetes Vagrant Kubeadm Real Cluster

Este projeto cria um **cluster Kubernetes real (com múltiplos nodes)** usando **Vagrant** e **kubeadm**, ideal para laboratórios e estudo de ambientes de produção.

---

## 📌 Estrutura do projeto

---

## ✅ Funcionalidades implementadas

- Cluster Kubernetes com **1 Master** e **3 Nodes**
- Provisionamento automático via Vagrant e VirtualBox
- Rede CNI com **Flannel**
- Exemplo funcional de:
  - **DaemonSet** (CSI HostPath driver)
  - **Deployment** (NGINX)
  - **StatefulSet** (MongoDB com volume persistente)
  - **PersistentVolumeClaim (PVC)**
  - **StorageClass (hostPath)**

---

## 🚀 Como usar

1. **Subir o Cluster**

```bash
vagrant up
```
2. **Acessar o master**
```
bash vagrant ssh master-1
```
3. **Aplicar os manifests**
```bash
kubectl apply -f manifests/
```
---
## ✅ Observações Importantes
- O storage persistente é baseado em hostPath (volumes criados dentro de /mnt/data nos Nodes)
- Requer VirtualBox e Vagrant instalados na máquina host
- Este ambiente é exclusivamente para testes e aprendizado




