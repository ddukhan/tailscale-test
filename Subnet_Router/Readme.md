# 🚀 Tailscale Subnet Routing

## 🌟 Overview  

> **This is my favorite part of this entire effort. The 10.x/8 network within GCP K8s is exceedingly
> hidden. Google wants you to reference it through the public IP NAT and across Load Balancers. Until testing
> is complete, this wastes resources, time, and money. Attach a ___Tailscale K8s Operator___ and expose the
> Subnet and http/https/ping to your heart's content.**

- **YAML Script** – Kubectl apply the yaml  
- **Console** – Approve the subnet.
- **Ping Like You Didnt Care** - CLI `ping`  

Both setups are designed to:  
- ✅ **Expose only webhooks to the public internet**  
- ✅ **Keep the n8n UI, login, and workflows private** using **Tailscale**  
- ✅ **Automatically manage SSL certificates** via Let's Encrypt  
- ✅ **Use Docker Compose for easy deployment**  

---

## 🔥 Choosing the Right Setup  

| Feature          | Terraform      | YAML             |
|------------------|----------------|------------------|
| **K8s Cluster**  | ✅ Very simple |                  |
| **K8s Operator** |                 | ⚡ More flexible |
| **Subnet Router**| ✅ Built-in    | ✅ Built-in |
| **Exit Node**    | ✅ Basic routing | ✅ Advanced routing & middleware |
| **K8s Ingress**  | ✅ Basic routing | ✅ Advanced routing & middleware |
| **K8s API Srvr Proxy**| ✅ Basic routing | ✅ Advanced routing & middleware |
| **Tailscale Support** | ✅ Console | ✅ Console |


## 🚀 Quick Start  

### 1️⃣ Clone the repository  
```sh
git clone https://github.com/ddukhan/tailscale-test/
cd tailscale-test/
```

---

## 📌 Summary  

- ✅ **Secure Build Of Many Current Tailscale Features**  

---

## 🤝 Contributing  

- Have improvements or want to report issues? Feel free to **open a PR or issue**.
- Have suggestions  or want to suggest coolness? Feel free to **DM**.
- I'm dying to try an MCP deployment with a **Tailscale Idp** (next).


🔗 **Happy automating ** 🚀# tailscale-test
My tailscale network build with other stuff
