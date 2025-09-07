# 🚀 Tailscale Cluster Ingress

## 🌟 Overview  

> **This feature, I am not sure I understand. If you expose the subnet, you expose the cluster ingress. Perhaps this is when you dont want to expose the subnet. I enabled the feature, and Kubectl says it is on and functioning, but I am not certain how to test it vs. subnet routing.**

- **YAML Script** – Kubectl apply the yaml    

Setup:  
- ✅ **Instantiate Yaml**  
- ✅ **Approve the subnet request**  
- ✅ **Honestly, Enjoy The Flexibility**    

---

## 🚀 Quick Start  

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
