<?php
include 'varsheaders.php';
$selectQuery = $pdo->prepare("SELECT * FROM products WHERE status='available'");
$selectQuery->execute();
$products = $selectQuery->fetchAll(PDO::FETCH_CLASS, 'product');
