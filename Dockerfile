# Dockerfile para o frontend Zabbix
FROM nginx:latest

# Instalar PHP e dependências necessárias para o Zabbix frontend
RUN apt-get update && apt-get install -y \
    php8.2-fpm \
    php8.2-mysql \
    php8.2-gd \
    php8.2-ldap \
    php8.2-curl \
    php8.2-cli \
    php8.2-xml \
    mariadb-client

# Configurar PHP-FPM para trabalhar com NGINX
RUN sed -i 's/^;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/' /etc/php/8.2/fpm/php.ini
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Baixar e instalar Zabbix frontend
RUN apt-get install -y wget
RUN wget https://cdn.zabbix.com/zabbix/sources/stable/6.0/zabbix-6.0.17.tar.gz -O /tmp/zabbix.tar.gz && \
    tar xzf /tmp/zabbix.tar.gz -C /usr/share/nginx/html && \
    rm /tmp/zabbix.tar.gz && \
    chown -R www-data:www-data /usr/share/nginx/html/zabbix

# Configurar NGINX para servir o Zabbix
COPY default.conf /etc/nginx/conf.d/default.conf

# Expor porta 80 para NGINX
EXPOSE 80

# Iniciar NGINX e PHP-FPM
CMD service php8.2-fpm start && nginx -g "daemon off;"