FROM php:8.2-fpm

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy Nginx config
COPY nginx/default.conf /etc/nginx/sites-available/default

# Prepare directory for the custom path
RUN mkdir -p /var/www/html/xyz

# Copy code
COPY . /var/www/html/xyz/

# Start Script
RUN echo "#!/bin/bash\nservice nginx start\nphp-fpm" > /start.sh
RUN chmod +x /start.sh

EXPOSE 80
CMD ["/start.sh"]
