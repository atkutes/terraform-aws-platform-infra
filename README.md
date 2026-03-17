# 🚀 Terraform AWS Platform Infrastructure

Production-like AWS infrastructure built using Terraform.

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

⚙️ Tech Stack

AWS (VPC, EC2, ALB, Security Groups)

Terraform

Linux (Amazon Linux 2)

Apache (httpd)

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

🚀 Features

Custom VPC

ALB

EC2 with Apache

Health checks

Terraform modules

▶️ How to Deploy
cd environments/dev
terraform init
terraform apply

🌍 Result

Open:

http://<alb_dns>
🧠 What I Learned

AWS networking

Load balancing

Terraform modules

Debugging real issues

🔧 Troubleshooting

Fixed ALB unhealthy

Fixed routing issues

Fixed security groups

Fixed user_data

📌 Future Improvements

Auto Scaling

CI/CD

Monitoring