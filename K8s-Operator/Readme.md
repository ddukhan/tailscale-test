# 🚀 Create The Tailscale K8s Operator

## 🌟 Overview  
  
- **Get Gcloud K8s Credentials** Get the K8s cluster name and ...
- **Access Control** – Create the tagOwners
- **Create The OAuth Client** – Settings -> OAuth clients
- **Add Taiscale Helm Repo** – CLI to Helm for the repo
- **Update Your Local Helm Cache** – CLI the repo
- **Install the Operator** CLI with all parameters  

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

### 2️⃣ Access Control  ( Tailscale Console )
- Console
- Copy/Paste the JSON below into your Access Controls JSON Editor
- Pay Attention To Placement. Place toward the top with other tagOwners
```sh
"tagOwners": {
   "tag:k8s-operator": [],
   "tag:k8s": ["tag:k8s-operator"],
}

```

### 3️⃣ Create The OAuth Client ( Tailscale Console )  
- Console
- Settings
- OAuth clients
- Set the  📌**devices core** to write
- Set the  📌**Auth Keys** to write
- Save the **Client ID** and **Client Secret** You need this

### 4️⃣ Add The Taiscale Helm Repo
- CLI from where ever you run Helm
```sh
helm repo add tailscale https://pkgs.tailscale.com/helmcharts
```

### 5️⃣ Update Your Local Helm Cache 
- CLI from where ever you run Helm
```sh
helm repo update
```

### 6️⃣ Install the Operator  
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
## 😒 Side Note
> [!WARNING]
> I tried creating a Terraform script that will create the OAuth Client for me. I found that the secret
> doesn't get passed in as a variable. I bet I am misunderstanding. If anyone has other info or working
> knowledge, please update.
> - Trial Example: `tailnet-Oauth.tf` {Really gave up after having all work and can't find key}


## 📌 Verification  

- ✅ **kubectl get namespaces** -- Verify tailscale namespace exists
- ✅ **Get Namespace Details Managed By Helm**
 ```sh
kubectl --namespace=tailscale get all -l app.kubernetes.io/managed-by=Helm
```

  
