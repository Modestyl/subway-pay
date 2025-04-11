FROM php:8.1-apache

# Copia os arquivos do projeto para o diretório do Apache
COPY . /var/www/html/

# Dá permissão (opcional)
RUN chown -R www-data:www-data /var/www/html

# Ativa mod_rewrite se precisar (não obrigatório aqui, mas útil)
RUN a2enmod rewrite

# Expõe a porta 80 (padrão do Apache)
EXPOSE 80
