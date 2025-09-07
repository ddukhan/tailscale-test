# 🚀 Tailscale K8s API Server Proxy

## 🌟 Overview  

> **This is an important feature for anyone trying to embed their Kubernetes Cluster Controls or any other normally unreachable API endpoints into software that will service the public. This feature has to be carefully weighed and supported. It has the potential for misuse or unintended consequences. However, it could create a lot of freedom and tremendous power for downstream customers.**

- **Get Gcloud K8s Credentials Get the K8s cluster name and ...**
- **YAML Script** – Kubectl apply the yaml  
- **Console** – Approve the subnet.
- **Ping Like You Didnt Care** - CLI `ping`  

Setup:  
- ✅ **Get Gcloud K8s Credentials if you havent so far.**
- ✅ **Instantiate Yaml**  
- ✅ **Approve the subnet request**  
- ✅ **Honestly, Enjoy The Flexibility**    

---

## 🚀 Quick Start  
### 0️⃣ Get Gcloud K8s Cluster Credentials
- CLI
- This command provides no output.
- It caches the credentials Helm will use.
- All the Data is in the terraform script
```sh
gcloud container clusters get-credentials CLUSTER_NAME --zone ZONE_ID --project PROJECT_ID
```
### 1️⃣ Download and Install the YAML  
```sh
kubectl apply -f subnet.yaml
```
### 2️⃣ Approve the subnet request 
- Console - Machines - Tailscale-operator-router
- Subnets -> Approve
- Adding the following code in your ACL JSON block allows all subnets to be auto approved.
```sh
"autoApprovers": {"routes": ["autogroup:admin"]},
```
---

## 📌 Summary  

- ✅ **Ping your 10.x/8 network** -- Best is ping the Control Plane Private Endpoint  

---
## 😕 Contemplations
> [!NOTE]
> Today all K8s cluster apps have to go through Artifact Registry. Now that I can hit the endnodes and
> even the management UI programmatically, I wonder if I can push an app, right from my laptop to my k8s
> cluster. Will try that next.

🔗 **Happy automating ** 🚀# tailscale-test
