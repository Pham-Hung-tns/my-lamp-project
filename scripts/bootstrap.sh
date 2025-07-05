#!/bin/bash

# -- update system --
echo "Updating package list..."
apt-get update -y
echo "System updated."


# -- Setting Apache2 --
echo "Installing Apache2"
apt-get install -y apache2
echo "Apache2 installed."

# -- Config Apache --
# Turn off default Apache web
echo "Disabling default Apache site..."
a2dissite 000-default.conf

# Create new config file Virtual Host for our project
echo "Creating new Virtual Host config for the project..."
cat > /etc/apache2/sites-available/project.conf <<EOF
<VirtualHost *:80>
	ServerAdmin webmaster@localhost
	DocumentRoot /var/www/project
	ErrorLog \${APACHE_LOG_DIR}/error.log
	CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

EOF

# Kich hoat trang web cua du an
echo "Enabling project site..."
a2ensite project.conf

# Khoi dong lai Apache de ap dung thay doi
echo "Restarting Apache..."
systemctl restart apache2

echo "Provisioning finished!"