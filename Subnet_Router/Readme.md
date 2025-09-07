# 🚀 Tailscale Subnet Routing

## 🌟 Overview  

> **This is my favorite part of this entire effort. The 10.x/8 network within GCP K8s is exceedingly
> hidden. Google wants you to reference it through the public IP NAT and across Load Balancers. Until testing
> is complete, this wastes resources, time, and money. Attach a ___Tailscale K8s Operator___ and expose the
> Subnet and http/https/ping to your heart's content.**

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
