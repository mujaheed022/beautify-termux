#!/bin/bash

# Install dependencies
pkg install figlet toilet curl -y

# Prompt user for name
read -p "Enter your name: " username

# Fetch location
location=$(curl -s ipinfo.io/city)

# Store the name
echo "$username" > ~/.termux-name

# Add styling command to .bashrc
echo "clear" >> ~/.bashrc
echo 'figlet -f slant "Welcome $username" | lolcat' >> ~/.bashrc
echo 'echo "Location: $location | Date: $(date)" | lolcat' >> ~/.bashrc
echo "PS1='\e[1;32m\u@\h:\w\$ \e[m'" >> ~/.bashrc

echo "Setup complete! Restart Termux to see the changes."