<?php
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $brMob = $_POST['brMob'];
    $password = $_POST['Lozinka'];

    $stmt = $conn->prepare("SELECT * FROM korisnici WHERE brMob = ?");
    $stmt->execute([$brMob]);
    $user = $stmt->fetch();

    if ($user && password_verify($password, $user['Lozinka'])) {
        
        echo '<script>alert("Prijava uspjesna");</script>';
        echo '<script>setTimeout(function(){ window.location.href = "index.html"; }, 0);</script>';
        exit();
    } else {
        
        echo '<script>alert("Prijava neuspjesna");</script>';
        echo '<script>setTimeout(function(){ window.location.href = "prijavaKorisnika.html"; }, 0);</script>';

    }
}
?>
