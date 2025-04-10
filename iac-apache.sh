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

# Fiz o reinicio do serviço para prevenção de possíveis problemas após a instalação.

sudo systemctl restart apache2

echo "Instalando unzip..."

sudo apt install unzip -y

# Download da aplicação (site)

echo "Instalando a aplicação..."

cd /tmp

wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
sudo unzip main.zip

echo "Implementando sua aplicação em um servidor apache..."

cd linux-site-dio/
sudo cp -iR * /var/www/html/

echo "O sua aplicação está pronto para o acesso local. Acesse em um navegador com seu ip!"

