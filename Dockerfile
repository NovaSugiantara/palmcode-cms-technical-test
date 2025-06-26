# Gunakan image frankenphp resmi
FROM dunglas/frankenphp

# Install dependencies Laravel
RUN apk add --no-cache php82-tokenizer php82-dom php82-pdo php82-pdo_mysql php82-simplexml php82-mbstring php82-fileinfo php82-ctype php82-openssl php82-curl php82-phar php82-zip git unzip

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Atur working directory
WORKDIR /app

# Salin semua file dari project
COPY . .

# Install dependencies
RUN composer install --no-interaction --prefer-dist

# Set permission storage & bootstrap
RUN chmod -R 777 storage bootstrap/cache

# Jalankan server Laravel di FrankenPHP
CMD ["frankenphp", "--config=/app/frankenphp.conf"]
