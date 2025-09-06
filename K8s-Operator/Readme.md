# 🚀 Create The Tailscale K8s Operator

## 🌟 Overview  
  
- **Access Control** – Create the tagOwners
- **Create The OAuth Client** – Settings -> OAuth clients
- **Add Taiscale Helm Repo** – CLI to Helm for the repo
- **Update Your Local Helm Cache** – CLI the repo
- **Install the Operator** CLI with all parameters  

---

## 🚀 Quick Start  

### 1️⃣ Clone the repository  
```sh
git clone https://github.com/telepilotco/n8n-secure-deployment.git
cd n8n-secure-deployment/
```

### 2️⃣ Choose a setup and navigate into the folder  
```sh
cd n8n-caddy-tailscale/   # or cd n8n-traefik-tailscale/
```

### 3️⃣ Configure environment variables  
Edit `.env` to set up domains, Tailscale settings, and n8n configurations.

### 4️⃣ Deploy the setup  
```sh
sh start.sh
```

---

## 📌 Summary  

- ✅ **Secure n8n deployments with either Caddy or Traefik**  
- ✅ **Public webhooks, private admin access via Tailscale**  
- ✅ **Automatic SSL certificates with Let's Encrypt**  
- ✅ **Docker-based setup for easy management**  

---

## 🤝 Contributing  

Have improvements or want to report issues? Feel free to **open a PR or issue**.  

🔗 **Happy automating with n8n, Caddy, and Traefik!** 🚀
