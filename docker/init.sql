-- Mobile Accessories E-commerce Database Schema

CREATE DATABASE IF NOT EXISTS `e-commerce` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `e-commerce`;

CREATE TABLE IF NOT EXISTS `customer` (
    `id`       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `userName` VARCHAR(100) NOT NULL UNIQUE,
    `email`    VARCHAR(255) NOT NULL UNIQUE,
    `password` VARCHAR(255) NOT NULL,
    `address`  VARCHAR(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `products` (
    `serial`       VARCHAR(50)  NOT NULL PRIMARY KEY,
    `name`         VARCHAR(255) NOT NULL,
    `categoryName` VARCHAR(100) NOT NULL,
    `brand`        VARCHAR(100) NOT NULL,
    `img`          VARCHAR(255) NOT NULL,
    `status`       VARCHAR(50)  NOT NULL DEFAULT 'available',
    `salary`       DECIMAL(10,2) NOT NULL,
    `offer`        DECIMAL(10,2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Sample products so the storefront is populated on first run
INSERT INTO `products` (`serial`, `name`, `categoryName`, `brand`, `img`, `status`, `salary`, `offer`) VALUES
('ACC-001', 'Premium Phone Case',        'acc',    'CaseMax',    'ITI-013e725ffff142962a3785122b28c36130fa2a7fd272b1837bccba3d4603638f.jpg', 'available', 29.99,  5.00),
('ACC-002', 'Wireless Earbuds',          'acc',    'SoundPro',   'ITI-053329b356be93742d9dc3e5ed0c8b412bd5dae95c96fb67e0b199d99d81bac8.jpg', 'available', 49.99, 10.00),
('MOB-001', 'Tempered Glass Protector',  'mobile', 'ShieldPlus', 'ITI-0b2ae1bb883fc7c01bdd8fb5d30c2cd54a6ab7248f1881af48cad0b3c2ffd6be.jpg', 'available', 14.99,  2.00),
('MOB-002', 'Fast Charge Cable 3-Pack',  'mobile', 'ChargeFast', 'ITI-23b6f5179303a2f98f8f7eff63cd610c39565d032b0c09540f68526f54244145.jpg', 'available', 19.99,  4.00),
('LAP-001', 'Laptop Stand Adjustable',   'laptop', 'DeskMate',   'ITI-27f2bf2ec003d1f34a424581dc3334f825ad6cf3dc6d2519f1173646bdcd8874.jpg', 'available', 39.99,  8.00);
