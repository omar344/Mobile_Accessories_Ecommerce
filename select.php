<?php
include 'varsheaders.php';
$id = $_GET['id'];
switch ($id) {
    case 3:

        $selectQuery = $pdo->prepare("SELECT * FROM products WHERE categoryName='laptop' AND status='available'");
        $selectQuery->execute();
        $products = $selectQuery->fetchAll(PDO::FETCH_CLASS, 'product');
        break;
    case 2:

        $selectQuery = $pdo->prepare("SELECT * FROM products WHERE categoryName='mobile' AND status='available'");
        $selectQuery->execute();
        $products = $selectQuery->fetchAll(PDO::FETCH_CLASS, 'product');
        break;
    case 1:

        $selectQuery = $pdo->prepare("SELECT * FROM products WHERE categoryName='acc' AND status='available'");
        $selectQuery->execute();
        $products = $selectQuery->fetchAll(PDO::FETCH_CLASS, 'product');
        break;
    default:

        $selectQuery = $pdo->prepare("SELECT * FROM products WHERE status='available'");
        $selectQuery->execute();
        $products = $selectQuery->fetchAll(PDO::FETCH_CLASS, 'product');
}
