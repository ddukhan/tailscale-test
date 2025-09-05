# 🚀 Create Cluster

## 🌟 Overview  

Cluster starts with 1 node, **can expand to 3 nodes with demand**:
- This assumes knowledge of how to use terraform
- Otherwise Create GCP Project, Enable billing, Enable GCP API's
- Create a service account, assign proper IAM
- Generate the JSON Key
- In your main.tf use the json key in the credentials
- Or download the gcp SDK
- Make a directory for your main.tf file
- cd into that directory
- **GCP your credentials**
- **terraform init** must be in the same directory as main.tf
- **terraform validate** make sure there is no errors in the main.tf
- **terraform plan** read the output and make sure its what was expected
- Dont bother with the -out=FILE
- **terraform apply**  

Both setups are designed to:  
- ✅ **terraform init**  
- ✅ **terraform validate**  
- ✅ **terraform plan**  
- ✅ **terraform apply**  

---

## 🔥 GCP Auth
```sh
gcloud auth login
```
---

## 🚀 Quick Build  

### 1️⃣   Initialize the main.tf
```sh
terraform init
```

### 2️⃣ Validate main.tf  
```sh
terraform validate
```

### 3️⃣ Plan the deployment  
```sh
terraform plan
```

### 4️⃣ Deploy the setup  
```sh
terraform deploy
```

---

## 📌 Summary  

- ✅ **Wait up to 10 minutes**
- ✅ **It will stop after several minutes and then restart. That is the new node pool**

---  

🔗 **Check your GCP Console under Kubernetes Cluster and make sure it is what you expect!** 🚀
