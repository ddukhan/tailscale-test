# 🚀 Tailscale Cluster Ingress

## 🌟 Overview  

> **This feature, I am not sure I understand. If you expose the subnet, you expose the cluster ingress.
> Perhaps this is when you dont want to expose the subnet. I enabled the feature, and Kubectl says it is on
> and functioning, but I am not certain how to test it vs. subnet routing.** 

Setup:  
- ✅ **Get Gcloud K8s Cluster Credentials**
- ✅ **Instantiate Yaml**      

---

## 🚀 Quick Start  
### 1️⃣ Get Gcloud K8s Cluster Credentials
- CLI
- This command provides no output.
- It caches the credentials Helm will use.
- All the Data is in the terraform script
```sh
gcloud container clusters get-credentials CLUSTER_NAME --zone ZONE_ID --project PROJECT_ID
```
### 2️⃣ Download and Install the YAML  
```sh
kubectl apply -f ingress.yaml
```
## 📌 Summary  

- ✅ **Ping your 10.x/8 network** -- Best is ping the Control Plane Private Endpoint  

---
## 😕 Contemplations
> [!NOTE]
> Today all K8s cluster apps have to go through Artifact Registry. Now that I can hit the endnodes and
> even the management UI programmatically, I wonder if I can push an app, right from my laptop to my k8s
> cluster. Will try that next.

🔗 **Happy automating ** 🚀# tailscale-test
