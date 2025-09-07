# 🚀 Tailscale K8s API Server Proxy

## 🌟 Overview  

> **This is an important feature for anyone trying to embed their Kubernetes Cluster Controls or any other normally unreachable API endpoints into software that will serve the public. This feature has to be carefully weighed and supported. It has the potential for misuse or unintended consequences. However, it could create a lot of freedom and tremendous power for downstream customers.**

- **Get Gcloud K8s Credentials Get the K8s cluster name and ...**
- **YAML Script** – Kubectl apply the yaml  
- **CLI** – Test. 

Setup:  
- ✅ **Get Gcloud K8s Credentials if you haven't so far.**
- ✅ **Instantiate Yaml**  
- ✅ **Test and Test**    

---

## 🚀 Quick Start  
### 0️⃣ Get Gcloud K8s Cluster Credentials
- CLI
- This command provides no output.
- It caches the credentials Helm will use.
- All the data is in the YAML script
```sh
gcloud container clusters get-credentials CLUSTER_NAME --zone ZONE_ID --project PROJECT_ID
```
### 1️⃣ Download and Install the YAML  
```sh
kubectl apply -f api-proxy-noath.yaml
```
### 2️⃣ Test and Test
- To Test
```sh
kubectl proxy
```
- The Kubectl proxy command returns the URL to use
```sh
curl http://localhost:8001/api/v1/pods
```
- returns the number of pods running as a JSON object
```sh
curl http://localhost:8001/api/v1/namespaces
```
---

## 📌 Summary  

- ✅ **If your CURL command returns data, all is working**  
---
## 😕 Contemplations
> [!NOTE]
> This is a very interesting function. Today, the norm. is pure API functionality that has to be coded into software. This is hard to dynamically build, even with frameworks. With this functionality and asynchronous libraries that interact with the underlying OS, a dev can rapidly build https:// calls using, for instance, Python's requests library or async to control Kubectl. Or at least make Kubectl visible. I wonder how far this proxy functionality extends. Can services be brought up and down? This is worth trying as a next step.

🔗 **Happy automating ** 🚀# tailscale-test
