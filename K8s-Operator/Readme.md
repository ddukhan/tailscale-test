# 🚀 Create The Tailscale K8s Operator

## 🌟 Overview  
  
- **Access Control** – Create the tagOwners
- **Create The OAuth Client** – Settings -> OAuth clients
- **Add Taiscale Helm Repo** – CLI to Helm for the repo
- **Update Your Local Helm Cache** – CLI the repo
- **Install the Operator** CLI with all parameters  

---

## 🚀 Quick Start  

### 1️⃣ Access Control  ( Tailscale Console )
- Console
- Copy/Paste the JSON below into your Access Controls JSON Editor
- Pay Attention To Placement. Place toward the top with other tagOwners
```sh
"tagOwners": {
   "tag:k8s-operator": [],
   "tag:k8s": ["tag:k8s-operator"],
}

```

### 2️⃣ Create The OAuth Client ( Tailscale Console )  
- Console
- Settings
- OAuth clients
- Set the  📌**devices core** to write
- Set the  📌**Auth Keys** to write
- Save the **Client ID** and **Client Secret** You need this

### 3️⃣ Add The Taiscale Helm Repo
- CLI from where ever you run Helm
```sh
helm repo add tailscale https://pkgs.tailscale.com/helmcharts
```

### 4️⃣ Update Your Local Helm Cache 
- CLI from where ever you run Helm
```sh
helm repo update
```

### 5️⃣ Install the Operator  
- CLI from where ever you run Helm
- This step takes several minutes with zero output until failure or success
- Fill in OAuth client ID and OAuth client secret from step 2
```sh
helm upgrade \
  --install \
  tailscale-operator \
  tailscale/tailscale-operator \
  --namespace=tailscale \
  --create-namespace \
  --set-string oauth.clientId="<OAauth client ID>" \
  --set-string oauth.clientSecret="<OAuth client secret>" \
  --wait
```

---
