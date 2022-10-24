# Eddysanoli.com

Personal portfolio site using a combination of multiple technologies: Terraform, Ansible, Docker, Nginx, Next.js, React, and more. The site is hosted on a 2GB Linode and runs a group of Docker containers for both the frontend and my automation bot.

## Setup

- Create an empty `hosts` file inside of `ansible/configuration/hosts`.
- Create a `terraform.tfvars` file inside of `terraform/terraform.tfvars` and add definitions for the varibales found in `terraform/variables.tf`.
- Apply / create the cloud infrastructure in Linode

```bash
# Go into the terraform folder
cd terraform

# Initialize Terraform
terraform init

# Provision the cloud infrastructure
terraform apply
```

- Go into the Ansible folder and run the provisioning playbook

```bash
# Go into the Ansible folder
cd ansible

# Run the provisioning playbook
docker compose up
```

- Go into the `website` folder and create a new Next.js app inside of it

```bash
# Go into the website folder
cd website

# Create a new Next.js app
npx create-next-app . --typescript
```
