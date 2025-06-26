# Palmcode CMS – Headless CMS with TALL Stack

This is a Headless CMS built using the TALL Stack (Tailwind CSS, Alpine.js, Laravel, and Livewire). It supports admin management of posts, pages, categories, media, and exposes a public JSON API suitable for frontend use such as in Next.js.

---

## 🚀 Manual Setup

### 1. Clone Repository

```bash
git clone https://github.com/NovaSugiantara/palmcode-cms-technical-test.git
cd palmcode-cms-technical-test
```

### 2. Install Dependencies

```bash
composer install
npm install && npm run build
```

### 3. Setup Environment

```bash
cp .env.example .env
php artisan key:generate
```

> ✅ Configure your **database** and **S3 credentials** in `.env`.

### 4. Run Migrations

```bash
php artisan migrate --seed
```

### 5. Start Development Server

```bash
php artisan serve
```

---

## 🐳 Docker Setup (Optional)

### Prerequisites:

-   Docker & Docker Compose installed

### 1. Create `.env` File

```bash
cp .env.example .env
```

Edit `.env` as needed (especially DB and App URL).

### 2. Start Containers

```bash
docker-compose up -d --build
```

This will:

-   Run Laravel backend (app)
-   Use MySQL as database
-   Use separate container for Nginx (optional)

### 3. Run Migrations Inside Container

```bash
docker exec -it palmcode-app php artisan migrate --seed
```

> Replace `palmcode-app` with the name of your app container if different.

---

## 📂 Folder Structure (Simplified)

```
├── app/
├── database/
├── resources/
│   └── views/livewire/admin/
├── routes/
│   ├── web.php
│   └── api.php
├── docker-compose.yml
└── README.md
```

---

## 🛡️ Admin Access

Default credentials (for demo):

```
Email: admin@example.com
Password: p4ssw0rd!
```
