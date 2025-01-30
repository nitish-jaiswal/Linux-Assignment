#!/bin/bash

# Ensure the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run this script as root (use sudo)"
    exit 1
fi

# Update package list
echo "Updating package list..."
sudo apt update -y

# Install MySQL server
echo "Installing MySQL Server..."
sudo apt install -y mysql-server

# Start and enable MySQL service
echo "Starting and enabling MySQL service..."
sudo systemctl start mysql
sudo systemctl enable mysql

# Secure MySQL installation (optional, requires user input)
echo "Running MySQL secure installation..."
sudo mysql_secure_installation

# Verify MySQL installation
echo "Checking MySQL service status..."
sudo systemctl status mysql --no-pager

# Print success message
echo "MySQL installation completed successfully!"