# 🚀 Terraform AWS Platform Infrastructure

Production-like AWS infrastructure built using Terraform.  
This project simulates a real-world platform setup with networking, load balancing and compute resources.

---

## 🧱 Architecture

```text
Internet
  |
  v
Application Load Balancer (ALB)
  |
  v
EC2 Instance (Apache Web Server)

## ⚙️ Tech Stack

- AWS (VPC, EC2, ALB, Security Groups, Internet Gateway)
- Terraform (Infrastructure as Code)
- Linux (Amazon Linux 2)
- Apache (httpd)


## 📁 Project Structure

```text
terraform-aws-platform-infra/
│
├── modules/
│   ├── vpc/
│   ├── alb/
│   └── ec2/
│
├── environments/
│   └── dev/
│
├── README.md
└── .gitignore


---

## 🚀 Features

- Custom VPC with public subnets
- Internet Gateway and routing configuration
- Application Load Balancer (ALB)
- EC2 instance running Apache web server
- Health checks via ALB target group
- Modular Terraform architecture

---

## ▶️ How to Deploy

```bash
cd environments/dev

terraform init
terraform apply

🌍 Result

After deployment, open:

http://<alb_dns>

Expected output:

HELLO FROM TERRAFORM WORKS

🧠 Key Learnings

AWS networking fundamentals (VPC, subnets, route tables)

Load balancing using ALB

Infrastructure as Code with Terraform modules

Security group configuration and traffic flow

Debugging real cloud infrastructure issues

🔧 Troubleshooting & Challenges

During development, I solved several real-world cloud issues:

Fixed ALB target group "unhealthy" status

Resolved subnet routing and Internet Gateway configuration

Debugged EC2 user_data execution issues

Fixed security group misconfigurations

Ensured proper HTTP service availability on EC2

📌 Future Improvements

Auto Scaling Group (ASG)

HTTPS with ACM + ALB

Remote Terraform state (S3 backend)

CI/CD pipeline (GitHub Actions)

Monitoring with CloudWatch

💼 About

This project was built as part of my journey into Cloud / Platform Engineering.

I am currently open to Junior Cloud / Platform Engineering roles in Oslo 🇳🇴