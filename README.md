# terraform-aws-iac

I implemented multi-environment AWS infrastructure using Terraform, where dev and prod are separated using tfvars. The project provisions VPC, networking, security groups, and EC2 instances. I structured the code with proper variable separation and remote backend configuration to simulate production-level infrastructure provisioning.


📌 Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform to provision and manage AWS infrastructure for multiple environments (dev & prod).

The infrastructure includes:

Custom VPC

Public Subnets

Internet Gateway

Route Tables

Security Groups

EC2 Instances

Remote Backend for State Management

Environment-specific configuration using tfvars

This project follows modular, environment-driven Terraform design principles used in real-world DevOps workflows.

🏗 Architecture Components

The following resources are provisioned:

VPC with CIDR configuration

Public Subnets

Internet Gateway for outbound connectivity

Route Tables and associations

Security Groups with controlled ingress/egress rules

EC2 instance per environment

Outputs for public IP and instance details

📂 Repository Structure
backend.tf          → Remote state configuration
provider.tf         → AWS provider configuration
variables.tf        → Input variables definition
vpc.tf              → VPC and networking resources
security-group.tf   → Security group configuration
ec2.tf              → EC2 instance configuration
outputs.tf          → Output values
dev.tfvars          → Development environment variables
prod.tfvars         → Production environment variables


🔁 Multi-Environment Strategy
This project uses separate .tfvars files for environment isolation:

dev.tfvars
prod.tfvars

This allows:
✔ Different instance sizes
✔ Different CIDR ranges
✔ Different tags
✔ Environment-specific configurations

Deployment example:

terraform init
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars"


🧠 Key Concepts Demonstrated

Infrastructure as Code (IaC)

Environment-based configuration management

Remote backend for state management

Secure security group configuration

Output exposure for automation

Separation of variables and logic
