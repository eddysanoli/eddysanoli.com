# Eddysanoli.com

Personal portfolio site using a combination of multiple technologies: Terraform, Ansible, Docker, Nginx, Next.js, React, and more. The site is hosted on a 2GB Linode and runs a group of Docker containers for both the frontend and my automation bot.

## Setup

1. Create an empty `hosts` file inside of `ansible/configuration/hosts`.
2. Create a `terraform.tfvars` file inside of `terraform/terraform.tfvars` and add definitions for the varibales found in `terraform/variables.tf`.
3. Run `terraform init` inside of `terraform/` to initialize Terraform in that folder.
4. Provision the cloud infrastructure with `terraform apply` inside of `terraform/`.
