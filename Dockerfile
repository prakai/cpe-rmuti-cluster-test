FROM php:8.2-apache
# Create the sub-directory and copy files there
RUN mkdir -p /var/www/html/prakai-project-0
COPY index.php /var/www/html/prakai-project-0/
EXPOSE 80
