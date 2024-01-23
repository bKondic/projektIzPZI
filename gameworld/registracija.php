<?php
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $Ime = $_POST['Ime'];
    $Prezime = $_POST['Prezime'];
    $brMob = $_POST['brMob'];
    $password = password_hash($_POST['Lozinka'], PASSWORD_DEFAULT);

    $stmt = $conn->prepare("INSERT INTO korisnici (Ime, Prezime, brMob, Lozinka) VALUES (?, ?, ?, ?)");
    $stmt->execute([$Ime, $Prezime, $brMob, $password]);

    
    echo '<script>alert("Registracija uspjesna");</script>';

    echo '<script>setTimeout(function(){ window.location.href = "index.html"; }, 0);</script>';

    exit();
}
?>
