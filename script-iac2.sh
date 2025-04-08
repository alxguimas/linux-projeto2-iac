#!/bin/bash
echo "Atualizando o servidor ..."
apt-get update
apt-get upgrade
apt-get install apache2 -y
apt-get instal unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tpm
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html