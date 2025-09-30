# 🏗️ Modular Azure Architecture with Terraform  
> *Networking • Compute • Load Balancing • Bastion*

![Terraform](https://img.shields.io/badge/Terraform-v1.3%2B-blue?logo=terraform&style=for-the-badge)
![Azure](https://img.shields.io/badge/Microsoft_Azure-0078D4?logo=microsoftazure&logoColor=white&style=for-the-badge)
![IaC Modular](https://img.shields.io/badge/Modular_IaC-Production--Ready-success?style=for-the-badge)

---

## 🚀 See Live Demo & Full Documentation

<a href="https://stanilpaul.github.io/projects/project1-terraform-module/" target="_blank" rel="noopener noreferrer">👉 Click here to view the full project page on my portfolio (opens in new tab)</a>

You’ll find:
- 🎥 **Demo video (3 min)** — deployment, load balancers, Bastion, state files
- 📸 **Detailed screenshots** per module
- 🧩 **Full architecture diagram**
- 🔄 **Deployment workflow** with separate remote state files
- ✅ **DevOps & security best practices**
- 🛠️ **Full tech stack**
- 📈 Improvement areas & limitations
- 🧠 Key learnings — mistakes, breakthroughs, growth

---

## 📌 About This Project

This project simulates a **modular cloud infrastructure in a production-like environment**, designed to be managed by **multiple independent teams**:

- 👨‍💻 **Networking Team** → VNet, Subnets, NSG, NAT Gateway
- 👩‍💻 **Compute Team** → Linux VMs + Apache via cloud-init
- 👨‍🔧 **SRE / Infra Team** → External + Internal Load Balancers
- 👮‍♂️ **Security / Support Team** → Azure Bastion for secure access (no open SSH/RDP ports)

✅ Each module uses its own **remote state file** (stored in Azure Blob Storage)  
✅ Explicit inter-module dependencies  
✅ Extensible via dynamic maps (`for_each`, no `count`)  
✅ Auto-generated documentation with `terraform-docs`

---

## 🔗 Useful Links

| Resource | Link |
|----------|------|
| 🌐 <a href="https://stanilpaul.github.io/projects/project1-terraform-module/" target="_blank" rel="noopener noreferrer">Portfolio - Full Project Page</a> | Opens in new tab |
| 💻 <a href="https://github.com/stanilpaul/project1_terraform_module" target="_blank" rel="noopener noreferrer">Main Project Repository</a> | Opens in new tab |
| 📦 <a href="https://registry.terraform.io/namespaces/stanilpaul" target="_blank" rel="noopener noreferrer">Terraform Registry Modules</a> | Opens in new tab |
| 📁 <a href="https://github.com/stanilpaul/terraform-azurerm-networking-project1" target="_blank" rel="noopener noreferrer">Networking Module</a> | Opens in new tab |
| 📁 <a href="https://github.com/stanilpaul/terraform-azurerm-compute-web-tier-project1" target="_blank" rel="noopener noreferrer">Compute Module</a> | Opens in new tab |
| 📁 <a href="https://github.com/stanilpaul/terraform-azurerm-load-balancing-project1" target="_blank" rel="noopener noreferrer">Load Balancing Module</a> | Opens in new tab |
| 📁 <a href="https://github.com/stanilpaul/terraform-azurerm-bastion-project1" target="_blank" rel="noopener noreferrer">Bastion Module</a> | Opens in new tab |

---

## 📬 Contact / Questions?

Want to discuss architecture, Terraform, or DevOps?  
→ Portfolio: <a href="https://stanilpaul.github.io/" target="_blank" rel="noopener noreferrer">https://stanilpaul.github.io/</a>  
→ LinkedIn: <a href="https://www.linkedin.com/in/paul-stanil-grasian-9a9989187/" target="_blank" rel="noopener noreferrer">https://www.linkedin.com/in/stanilpaul/</a>

---

> ✨ *“This isn’t just a lab — it’s a production-grade simulation proving I can design modular, secure, team-scalable cloud infrastructures.”*

---

✅ <a href="https://stanilpaul.github.io/projects/project1-terraform-module/" target="_blank" rel="noopener noreferrer">Ready to explore? Visit the full project page →</a>