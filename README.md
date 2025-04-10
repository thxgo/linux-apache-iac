# Script IaC - Servidor Apache com Aplicação Web

Projeto de **Infraestrutura como Código (IaC)** desenvolvido para o curso de Linux da plataforma [DIO](https://www.dio.me), com o objetivo de provisionar um servidor web Apache.

Após a entrega do projeto original, decidi tornar o script adaptável a **qualquer aplicação web hospedada no GitHub**. Para isso, utilizei variáveis configuráveis e substituí o `unzip` pelo `tar`. 



## Funcionalidades

- Atualização dos pacotes do sistema
- Instalação do Apache  
- Download e extração da aplicação web hospedada no GitHub
- Copia automaticamente os arquivos da aplicação para o diretório do Apache


## Pré-requisitos

- Sistema operacional Linux (testado no Ubuntu)
- Acesso root ou permissões de superusuário (sudo)

# Como usar

1. **Defina o link da aplicação web:**

   - Abra o script e localize a variável `$APP_URL`.
   - Insira o **link** de download da aplicação hospedada no GitHub, **certificando-se de que a URL termina com `.tar.gz`** (não `.zip`).

   Exemplo:
   ```bash
   APP_URL="https://github.com/usuario/repositorio/archive/refs/heads/main.tar.gz"
   ```

2. **Torne o script executável e execute-o:**

   Primeiro, torne o script executável:
   ```bash
   chmod +x iac-apache.sh
   ```

   Em seguida, execute o script com permissões de superusuário:
   ```bash
   sudo ./iac-apache.sh
   ```
