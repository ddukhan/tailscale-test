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

- ✅ **Test By Showing the Ingress**
- You will see the ingress is attached to Tailscale class 
- But its not specific to any hosts or any IP or Load Balancer.
- I need to play more with this or find more documentation about the goal of this feature.
```sh
kubectl get ingress
```
---
## 😕 Contemplations
> [!NOTE]
> Not sure about this one.

🔗 **Happy automating ** 🚀# tailscale-test
