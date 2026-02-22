
# Mobile Accessories E-commerce Website

A full-stack PHP e-commerce web application for browsing and purchasing mobile accessories. The project includes a customer-facing storefront, user authentication, and an admin dashboard for product management.

---

## Features

- **User Authentication** – Secure registration and login with password hashing.
- **Product Browsing** – Browse and view detailed information for all available products.
- **Shopping** – Add products to a cart and complete purchases.
- **Blog Section** – Informational blog posts integrated into the storefront.
- **Admin Dashboard** – Admins can add, update, and delete products with image uploads.
- **Responsive Design** – Mobile-friendly layout using Tailwind CSS and custom stylesheets.

---

## Tech Stack

| Layer       | Technology                              |
|-------------|------------------------------------------|
| Backend     | PHP (PDO for database access)            |
| Database    | MySQL                                    |
| Frontend    | HTML5, CSS3, JavaScript                  |
| CSS Frameworks | Tailwind CSS, custom CSS              |
| Icons       | Ionicons, Boxicons, Font Awesome         |
| Fonts       | Google Fonts – Urbanist, Inter           |

---

## Project Structure

```
├── index.php              # Homepage (hero, shop, blog sections)
├── shop.php               # Product listing page
├── product.php            # Single product detail page
├── prouctsPage.php        # Products page
├── blog.php               # Blog section
├── login.php              # User login
├── register.php           # User registration
├── logout.php             # Session logout
├── receipt.php            # Order receipt
├── connection.php         # PDO database connection
├── validator.php          # Input validation helper
├── headers.php            # Shared site header
├── hero.php               # Hero banner section
├── footer.php             # Shared site footer
├── varsheaders.php        # Header variables
├── select.php             # Product selection logic
├── selectAllProducts.php  # Fetch all products
├── admin/                 # Admin dashboard
│   ├── index.php          # Add product form
│   ├── allProducts.php    # View all products
│   ├── insertProduct.php  # Insert product handler
│   ├── update.php         # Update product page
│   ├── updateProduct.php  # Update product handler
│   ├── delete.php         # Delete product handler
│   ├── product.php        # Admin product detail
│   ├── selectAllProducts.php
│   ├── connection.php
│   └── varsheaders.php
├── assets/                # CSS, JS, and images
├── assets2/               # Additional CSS and JS
└── include/               # Shared PHP config (config.php)
```

---

## Getting Started

### Prerequisites

- PHP 7.4 or higher
- MySQL 5.7 or higher
- A local server environment such as [XAMPP](https://www.apachefriends.org/) or [WAMP](https://www.wampserver.com/)

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/omar344/Mobile_Accessories_Ecommerce.git
   ```

2. **Move the project** into your server's web root directory (e.g., `htdocs` for XAMPP).

3. **Create the database:**
   - Open your MySQL client (e.g., phpMyAdmin).
   - Create a new database named `e-commerce`.
   - Import any provided SQL schema file, or create the required tables manually.

4. **Configure the database connection:**
   - Open `connection.php` and `include/config.php`.
   - Update the host, database name, username, and password to match your local setup.

5. **Start the server** and navigate to `http://localhost/Mobile_Accessories_Ecommerce/` in your browser.

---

## Usage

- Visit the homepage to browse featured products and blog posts.
- Register a new account or log in to an existing one.
- Browse the shop, view product details, and make purchases.
- Access the admin panel at `/admin/` to manage products (add, edit, delete).

