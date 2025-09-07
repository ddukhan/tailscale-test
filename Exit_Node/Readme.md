# 🚀 Tailscale Exit Node Routing

## 🌟 Overview  

> **This is my second most favorite part of this entire effort. To be able to seamlessly reroute your entire
> existence out of one exit_node or another is immensely powerful. Not only is this great for international
> travel and mobile hotspots for corporate travelers, but it is great for anyone using SASE ( Secure Access
> Services Edge ) or SDWan ( Software Defined Wan ). Testing any security access protocol is critical for Blue
> Team Security Testers.**

- **CLI the exit node** – CLI even if the node is up  
- **Console** – Approve the subnet.
- **Traceroute or other to your favorite exit** - CLI or App for Mobile `traceroute`  

Setup:  
- ✅ **Instantiate Exit Node**  
- ✅ **Approve the Exit Node request**  
- ✅ **Enjoy The Freedom**    

---

## 🚀 Quick Start  

### 1️⃣ CLI The Commands in Linux  
```sh
sudo tailscale set --advertise-exit-node
sudo tailscale up
```
### 2️⃣ Approve the subnet request 
- Console - Machines - Ubuntu-nuc ( Name_Of_Designated_Machine )
- Routing Settings -> Approve
- Adding the following code in your ACL JSON block allows exitNodes to be auto-approved.
```sh
"autoApprovers": {"exitNodes": ["autogroup:admin"]},
```
---

## 📌 Summary  

- ✅ **Traceroute** -- Doesnt Exist On Mobile. Use __iNetTools.__  

---
## 😕 Contemplations
> [!NOTE]
> Exit Nodes are powerful devices for not only network testing and security, but could also be excellent for
> resource optimization. Hypothetically, if two links exist exiting an environment using SASE, a slow and/or
> a fast link, or a saturated and an unsaturated link, being able to reposition on the fly is immensely
> powerful and could mean the difference between failure and success.

🔗 **Happy automating ** 🚀# tailscale-test
