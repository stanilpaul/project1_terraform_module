# 🏗️ Architecture Modulaire Azure avec Terraform  
> *Networking • Compute • Load Balancing • Bastion*

![Terraform](https://img.shields.io/badge/Terraform-v1.3%2B-blue?logo=terraform&style=for-the-badge)
![Azure](https://img.shields.io/badge/Microsoft_Azure-0078D4?logo=microsoftazure&logoColor=white&style=for-the-badge)
![IaC Modular](https://img.shields.io/badge/Modular_IaC-Production--Ready-success?style=for-the-badge)

---

## 🚀 Voir la démo & documentation complète

👉 **[Clique ici pour accéder à la page complète du projet sur mon portfolio](https://stanilpaul.github.io/projects/project1-terraform-module/)**

Tu y trouveras :
- 🎥 **Vidéo de démonstration** (3 min) — déploiement, LB, Bastion, state files
- 📸 **Captures d’écran détaillées** par module
- 🧩 **Schéma d’architecture** complet
- 🔄 **Workflow de déploiement** avec remote state files séparés
- ✅ **Bonnes pratiques DevOps & sécurité**
- 🛠️ **Stack technique complète**
- 📈 Axes d’amélioration & limites
- 🧠 Ce que j’ai appris — erreurs, apprentissages, transformation

---

## 📌 À propos du projet

Ce projet simule une **infrastructure cloud modulaire en environnement de production**, conçue pour être gérée par **plusieurs équipes métiers indépendantes** :

- 👨‍💻 **Équipe Réseau** → VNet, Subnets, NSG, NAT Gateway
- 👩‍💻 **Équipe Compute** → VMs Linux + Apache via cloud-init
- 👨‍🔧 **Équipe SRE** → Load Balancers (externe + interne)
- 👮‍♂️ **Équipe Sécurité** → Azure Bastion pour accès sécurisé

✅ Chaque module a son propre **remote state file** (stocké dans Azure Blob Storage)  
✅ Dépendances explicites entre modules  
✅ Extensible via maps dynamiques (`for_each`, pas de `count`)  
✅ Documentation auto-générée avec `terraform-docs`

---

## 🔗 Liens utiles

| Ressource | Lien |
|----------|------|
| 🌐 **Portfolio - Page complète du projet** | [https://stanilpaul.github.io/projects/project1-terraform-module/](https://stanilpaul.github.io/projects/project1-terraform-module/) |
| 💻 **Dépôt principal du projet** | [https://github.com/stanilpaul/project1_terraform_module](https://github.com/stanilpaul/project1_terraform_module) |
| 📦 **Modules sur Terraform Registry** | [https://registry.terraform.io/namespaces/stanilpaul](https://registry.terraform.io/namespaces/stanilpaul) |
| 📁 **Module Networking** | [GitHub](https://github.com/stanilpaul/terraform-azurerm-networking-project1) |
| 📁 **Module Compute** | [GitHub](https://github.com/stanilpaul/terraform-azurerm-compute-web-tier-project1) |
| 📁 **Module Load Balancing** | [GitHub](https://github.com/stanilpaul/terraform-azurerm-load-balancing-project1) |
| 📁 **Module Bastion** | [GitHub](https://github.com/stanilpaul/terraform-azurerm-bastion-project1) |

---

## 📬 Contact / Questions ?

Envie de discuter architecture, Terraform ou DevOps ?  
→ Portfolio : [https://stanilpaul.github.io/](https://stanilpaul.github.io/)  
→ LinkedIn : [https://www.linkedin.com/in/stanilpaul/](https://www.linkedin.com/in/stanilpaul/)

---

> ✨ *“Ce projet n’est pas juste un lab — c’est une simulation de production qui prouve ma capacité à concevoir des infrastructures modulaires, sécurisées et maintenables par plusieurs équipes.”*

---

✅ **Prêt à explorer ? Rendez-vous sur [la page dédiée du projet](https://stanilpaul.github.io/projects/project1-terraform-module/) !**