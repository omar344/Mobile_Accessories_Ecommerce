<?php
include('varsheaders.php');
$serial = $_GET['serial'];
$approveQuery = $pdo->prepare("UPDATE products SET status='available' WHERE serial=:serial");
$approveQuery->bindParam(':serial', $serial);
$approveQuery->execute();
header('Location: allProducts.php');
exit;
