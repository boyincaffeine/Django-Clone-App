### 📄 `README.md`

# 🐳 Django Notes App Deployment Script (Amazon Linux 2)

This repository contains a Bash script to automate the setup and deployment of a Django Notes application using Docker and Nginx on an **Amazon Linux 2** instance (like AWS EC2).

## 📦 What It Does

- Clones a Django Notes app from GitHub.
- Installs Docker and Nginx using Amazon Linux 2 compatible commands.
- Starts and enables Docker and Nginx services.
- Builds the Django app Docker image.
- Runs the app container on port `8000`.

## 📁 Project Structure



.
├── deploy\_django.sh     # Main automation script
├── README.md            # You're here!


## 🛠️ Prerequisites

- An Amazon Linux 2 EC2 instance (with `sudo` privileges)
- Open port `8000` in your EC2 Security Group
- Internet access to clone the GitHub repo and download packages

## 🚀 How to Use

1. **Clone this repo or copy the script to your EC2 instance.**

2. **Make the script executable:**

   bash
   chmod +x deploy_django.sh


3. **Run the script:**

   bash
   ./deploy_django.sh
   

4. **Access the app:**

   Open your browser and go to:

   
   http://<your-ec2-public-ip>:8000
   

## ⚠️ Notes

* If the repo is already cloned, the script skips cloning and just moves to the app directory.
* If Docker or Nginx is already installed, `yum` will skip reinstallation.
* This script is written specifically for **Amazon Linux 2** and will not work with Ubuntu (`apt`) or other distros.



Enjoy fast Django deployment on AWS! 🚀
