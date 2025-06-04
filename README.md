# 🚀 WordPress on AWS (Terraform)

This repo sets up a production-style WordPress + MySQL architecture in AWS using Terraform.

## 📦 Features

- VPC with public/private subnets
- WordPress on EC2 (public subnet)
- MySQL on EC2 (private subnet)
- NAT Gateway for internet access
- Security Groups for tight control
- Bootstrap scripts for auto-install
- CI/CD-ready structure

## 🔧 Usage

1. Install Terraform
2. Configure AWS credentials (`aws configure`)
3. Create a key pair in EC2 and update `terraform.tfvars`
4. Run:

```bash
terraform init
terraform plan
terraform apply

