# 🚀 AWS Resource Monitoring using Shell Scripting (DevOps Project)

## 📌 Project Overview

This project demonstrates how to **automate AWS resource monitoring** using **Shell Scripting, AWS CLI, and Cron Jobs**.

The script collects and logs information about:

* ✅ S3 Buckets
* ✅ EC2 Instances
* ✅ Lambda Functions
* ✅ IAM Users

This helps in **cost optimization, auditing, and infrastructure visibility**.

---

## 🛠️ Technologies Used

* AWS EC2 (Ubuntu Instance)
* AWS CLI
* Shell Scripting (Bash)
* Cron Jobs (Automation)
* jq (JSON parsing)

---

## ⚙️ Architecture

EC2 Instance → Shell Script → AWS CLI → Logs → Cron Automation
---

## 📜 Script Functionality

* Fetches AWS resource details
* Parses EC2 instance IDs using `jq`
* Stores output in log files
* Runs automatically every 10 minutes using cron

---

## 📂 Project Structure

```
scripts/aws_res.sh       # Main monitoring script
logs/aws_resource.log    # Output log file
screenshots/             # Proof of execution
```

---

## ▶️ Setup Instructions

### 1. Clone the repository

```
git clone https://github.com/<your-username>/aws-resource-monitoring-shell.git
cd aws-resource-monitoring-shell
```

### 2. Configure AWS CLI

```
aws configure
```

### 3. Install dependencies

```
sudo apt update
sudo apt install jq -y
```

### 4. Give permission

```
chmod +x scripts/aws_res.sh
```

### 5. Run script

```
./scripts/aws_res.sh
```

---

## ⏱️ Automation using Cron Job

```
crontab -e
```

Add:

```
*/10 * * * * /home/ubuntu/aws-resource-monitoring-shell/scripts/aws_res.sh >> /home/ubuntu/cron.log 2>&1
```

---

## 📊 Sample Output

```
===== AWS RESOURCE REPORT =====
Date: 2026-04-09

S3 Buckets:
...

EC2 Instances:
i-0d94f164927c7cfbe

Lambda Functions:
...

IAM Users:
...
```

---

## 📸 Screenshots

* EC2 Instance running
* Script execution output
* Cron job setup

---

## 🎯 Use Cases

* AWS resource monitoring
* Cost tracking
* DevOps automation
* Infrastructure auditing

---

## 🚀 Future Enhancements

* 📧 Email alerts
* ☁️ Upload logs to S3
* 📊 CloudWatch integration
* 🔔 Slack notifications

---

## 👨‍💻 Author

**Chanti**

---

## ⭐ Key Highlights (Resume Points)

* Automated AWS resource monitoring using Bash scripting
* Integrated AWS CLI with cron jobs for scheduled execution
* Improved infrastructure visibility and reduced manual effort

---

## 📄 License

This project is licensed under the MIT License.
