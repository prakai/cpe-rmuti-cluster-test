FROM php:8.2-apache
# Copy your PHP file into the Apache web directory
COPY index.php /var/www/html/
# Use the default port 80
EXPOSE 80
