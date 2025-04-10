#!/bin/bash

# IaC de provisionamento de servidor web

# Insira abaixo o link do download da aplicação web a ser provisionada (deve ser um arquivo .tar.gz, e não .zip)
APP_URL="https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.tar.gz"
APP_TAR_FILE="/tmp/aplicacao_web/main.tar.gz"

# Atualização do sistema
echo "Atualizando o sistema..."
sudo apt update -y
sudo apt upgrade -y

# Instalação do Apache
echo "Instalando apache2..."
sudo apt install apache2 -y

# Reinício do Apache para garantir que o serviço funcione adequadamente
sudo systemctl restart apache2

# Download da aplicação web
echo "Baixando a aplicação web..."
cd /tmp
mkdir -p aplicacao_web
cd aplicacao_web/
wget "$APP_URL" -O "$APP_TAR_FILE"

# Extração do arquivo .tar.gz (sem a pasta raiz do GitHub)
echo "Extraindo a aplicação web..."
tar --strip-components=1 -xzvf "$APP_TAR_FILE"
rm "$APP_TAR_FILE"

# Implementação da aplicação no servidor Apache
echo "Implementando sua aplicação em um servidor apache..."
sudo cp -R * /var/www/html/

echo "Sua aplicação está pronto para o acesso. Acesse em um navegador com o IP deste servidor!"


