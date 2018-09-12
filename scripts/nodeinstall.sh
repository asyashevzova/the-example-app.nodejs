#!/bin/bash
sudo apt-get update && sudo apt-get upgrade -y && curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh && sudo bash nodesource_setup.sh && sudo apt-get install nodejs -y && sudo apt-get install npm -y
echo "Nodejs and npm are installed, we can proceed!"
