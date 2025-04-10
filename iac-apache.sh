#!/bin/bash

# IaC de provisionamento de servidor web


# Atualização do sistema

echo "Atualizando o sistema..."

sudo apt update -y
sudo apt upgrade -y

# Instalação dos pacotes necessários

echo "Instalando pacotes necessários..."

echo "Instalando apache2..."

sudo apt install apache2 -y

# Reinicio do Apache para garantir que o serviço funcione adequadamente.

sudo systemctl restart apache2

echo "Instalando unzip..."

sudo apt install unzip -y

# Download da aplicação (site)

echo "Baixando a aplicação..."

cd /tmp

wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
sudo unzip main.zip

echo "Implementando sua aplicação em um servidor Apache..."

cd linux-site-dio-main/
sudo cp -R * /var/www/html/

echo "Sua aplicação está pronto para o acesso. Acesse em um navegador com o IP deste servidor!"

