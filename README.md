# Terraform AWS Platform Infrastructure

Production-like AWS infrastructure built with Terraform.

## 🧱 Architecture

Internet → Application Load Balancer → EC2 (Apache Web Server)

## ⚙️ Tech Stack

- AWS (VPC, EC2, ALB, Security Groups)
- Terraform
- Linux (Amazon Linux 2)
- Apache (httpd)

## 🚀 Features

- Custom VPC with public subnets
- Application Load Balancer
- EC2 instance running web server
- Health checks via ALB
- Modular Terraform structure

## 📁 Project Structure
modules/
vpc/
alb/
ec2/

environments/
dev/


## ▶️ How to Deploy

```bash
cd environments/dev

terraform init
terraform apply

🌍 Result

After deployment, open:

http://<alb_dns>

You should see:

HELLO FROM TERRAFORM WORKS

## ## 🧠 What I Learned

AWS networking (VPC, subnets, routing)

Load balancing with ALB

Terraform modules and structure

Debugging real infrastructure issues

Security groups and connectivity

###### 📌 Future Improvements

Auto Scaling Group

HTTPS (ACM + ALB)

CI/CD (GitHub Actions)

Monitoring (CloudWatch)


---

# 📄 2️⃣ .gitignore

📄 `.gitignore`

```bash
.terraform/
*.tfstate
*.tfstate.*
crash.log
*.tfvars
.terraform.lock.hcl
.env