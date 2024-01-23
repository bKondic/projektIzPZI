<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video igre za PS</title>

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="dizajna.css">

</head>

<body>
    <div class="w3-bar w3-dark-grey">
        <a href="index.html" class="w3-bar-item w3-button w3-mobile w3-green" style="width:25%">Glavni Izbornik</a>
        <a href="" class="w3-bar-item w3-button w3-mobile" style="width:25%">Cijelokupna ponuda</a>
        <a href="registracija.html" class="w3-bar-item w3-button w3-mobile" style="width:25%">Registracija</a>
        <a href="prijavaKorisnika.html" class="w3-bar-item w3-button w3-mobile" style="width:25%">Prijava</a>
    </div>

    <h1 class="w3-center"><b>Ponuda video igara</b></h1>

    <?php
    include 'config.php';
    
    // priprema i izvršavanje upita
    $query = "SELECT * FROM igre";

    // Dodao provjeru GET parametra i sortiranje
    if (isset($_GET['sort']) && ($_GET['sort'] == 'asc' || $_GET['sort'] == 'desc')) {
        $sortOrder = ($_GET['sort'] == 'asc') ? 'ASC' : 'DESC';
        $query .= " ORDER BY Cijena $sortOrder";
    }

    $stmt = $conn->prepare($query);
    $stmt->execute();
    $res = $stmt->fetchAll(PDO::FETCH_ASSOC);
    ?>

    <!-- Dodao formu za slanje sortiranja -->
    <form method="get" action="">
        <label for="sort">Sortiraj po cijeni:</label>
        <select name="sort" id="sort">
            <option value="asc">Od najniže do najviše</option>
            <option value="desc">Od najviše do najniže</option>
        </select><br>
        <input type="submit" value="Započni">
    </form>

    <div>
        <h4>Popis videoigara:</h4>
        <table class="w3-table-all">
            <tr class="w3-red">
                <th>Naslov</th>
                <th>Datum Objavljivanja</th>
                <th>Cijena</th>
            </tr>
            <?php
            foreach ($res as $row) {
                echo '<tr>
                            <td>' . $row['Naslov'] . '</td>
                            <td>' . $row['DatumObjavljivanja'] . '</td>
                            <td>' . $row['Cijena'] . '</td>
                        </tr>';
            }
            ?>
        </table>
    </div>

</body>

</html>
