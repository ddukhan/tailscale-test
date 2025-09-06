# 🚀 Tailscale Subnet Routing

## 🌟 Overview  

> **This is my favorite part of this entire effort. The 10.x/8 network within GCP K8s is exceedingly
> hidden. Google wants you to reference it through the public IP NAT and across Load Balancers. Until testing
> is complete, this wastes resources, time, and money. Attach a ___Tailscale K8s Operator___ and expose the
> Subnet and http/https/ping to your heart's content.**

- **YAML Script** – Kubectl apply the yaml  
- **Console** – Approve the subnet.
- **Ping Like You Didnt Care** - CLI `ping`  

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

---

## 📌 Summary  

- ✅ **Ping your 10.x/8 network** -- Best is ping the Control Plane Private Endpoint  

---
## 😕 Contemplations
> [!NOTE]
> Today all K8s cluster apps have to go through Artifact Registry. Now that I can hit the endnodes and
> even the management UI programmatically, I wonder if I can push an app, right from my laptop to my k8s
> cluster. Will try that next.

## 🤝 Contributing  

- Have improvements or want to report issues? Feel free to **open a PR or issue**.
- Have suggestions  or want to suggest coolness? Feel free to **DM**.
- I'm dying to try an MCP deployment with a **Tailscale Idp** (next).


🔗 **Happy automating ** 🚀# tailscale-test
My tailscale network build with other stuff
