#!/bin/bash

# Update packages
echo "Updating system packages..."
sudo apt update -y

# Install dependencies
echo "Installing dependencies..."
sudo apt install -y wget unzip

# Define Terraform version (can be changed)
TERRAFORM_VERSION="1.7.5"

# Download Terraform
echo "Downloading Terraform v$TERRAFORM_VERSION..."
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Unzip Terraform
echo "Extracting Terraform..."
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Move to /usr/local/bin
echo "Moving Terraform to /usr/local/bin..."
sudo mv terraform /usr/local/bin/

# Verify Terraform
echo "Verifying Terraform installation..."
terraform version

# Cleanup
echo "Cleaning up..."
rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

echo "✅ Terraform v$TERRAFORM_VERSION installed successfully!"
