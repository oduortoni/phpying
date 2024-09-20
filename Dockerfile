# Use the official PHP image with Apache
FROM php:8.1-apache

# Copy the PHP application code into the container
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Install any necessary PHP extensions (if needed)
RUN docker-php-ext-install pdo pdo_mysql

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
