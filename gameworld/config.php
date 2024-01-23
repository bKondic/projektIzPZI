<?php
$host = "sql110.infinityfree.com";
$dbname = "if0_35846292_igre";
$user = "if0_35846292";
$password = "QqqeCmQiKgIEi7";

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

?>
