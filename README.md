# 🚀 Tailscale GCP Network for Home and Office

## 🌟 Overview  

This repository provides **Four secure deployment templates** using:  
- **Terraform** – Simple, automation to deploy k8s  
- **helm** – Simple deployment of K8s Features
- **FastApi** - Simple App to test all the things  

Both setups are designed to:  
- ✅ **Expose only webhooks to the public internet**  
- ✅ **Keep the n8n UI, login, and workflows private** using **Tailscale**  
- ✅ **Automatically manage SSL certificates** via Let's Encrypt  
- ✅ **Use Docker Compose for easy deployment**  

---

## 🔥 Choosing the Right Setup  

| Feature           | Caddy Template  | Traefik Template  |
|------------------|----------------|------------------|
| **Ease of Use**  | ✅ Very simple | ⚡ More flexible |
| **Auto SSL**     | ✅ Built-in    | ✅ Built-in |
| **Reverse Proxy** | ✅ Basic routing | ✅ Advanced routing & middleware |
| **Tailscale Support** | ✅ Yes | ✅ Yes |

- Use **Caddy** if you want a **quick & simple** setup.  
- Use **Traefik** if you need **more control** over routing and middleware.  

---

## 🚀 Quick Start  

### 1️⃣ Clone the repository  
```sh
git clone https://github.com/ddukhan/tailscale-test/
cd tailscale-test
```

---

## 📌 Summary  

- ✅ **Secure Build Of Many Current Tailscale Features**  
- ✅ 

---

## 🤝 Contributing  

Have improvements or want to report issues? Feel free to **open a PR or issue**.  

🔗 **Happy automating ** 🚀# tailscale-test
My tailscale network build with other stuff
