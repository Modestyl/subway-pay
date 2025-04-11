FROM php:8.1-apache

# Instala a extensão mysqli
RUN docker-php-ext-install mysqli

# Copia os arquivos do site
COPY . /var/www/html/

# Ativa mod_rewrite (opcional)
RUN a2enmod rewrite

EXPOSE 80
