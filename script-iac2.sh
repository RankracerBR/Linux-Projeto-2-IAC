#!/bin/bash

echo "Atualizando o Sistema do Servidor..."
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y 
apt-get install unzip -y

echo "Baixando e copiando os arquivos..."

cd /tmp
wget https://github.com/RankracerBR/BMW-FAN-PAGE/archive/refs/heads/master.zip
unzip master.zip
cd BMW-PAGE-master
cp -R * /var/www/html/
