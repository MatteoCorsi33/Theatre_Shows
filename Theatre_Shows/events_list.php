<!DOCTYPE html>
<html lang="it">
<head>
  <title>Associazione La Veranda</title>
  <link rel="icon" href="img/association-icon.png">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<body style="overflow-x: auto">
    <nav class="navbar navbar-dark bg-dark">
        <a class="navbar-brand" id="navbar" href="index.php">
            <img src="img/association-icon.png" width="35" height="35" class="d-inline-block align-top" alt="">
            <h3 style="display: inline-block">Associazione teatrale La Veranda</h3>
        </a>
    </nav>
    <?php
        require "dbconnection.php";
        $sql = "SELECT 	s.ShowTitle, s.ShowDescription, tc.CompanyName,t.TheatreName, t.TheatreLocation, c.CityName, e.EventDateTime , s.TicketPrice, s.ShowImage
                FROM Cities c, Theatres t, TheatreCompanies tc, Shows s, Events e
                WHERE e.EventTheatre = t.TheatreID AND e.EventShow = s.ShowID  AND s.ShowCompany = tc.CompanyID AND t.City = c.CityID AND e.EventDateTime >= CURRENT_TIMESTAMP() AND YEAR(e.EventDateTime) <= (SELECT YEAR(CURRENT_TIMESTAMP()) + 1)
                ORDER BY e.EventDateTime;";
        $result = mysqli_query($conn, $sql);
    ?>
    <div class="card-columns">
        <?php while($row=$result->fetch_array()):?>
            <div class="card">
                <img class="card-img-top" src="img/<?=$row[8]?>" alt="Image not provided">
                <div class="card-body">
                    <h4 class="card-title"><?= $row[0]?></h4>
                    <p class="card-text"><?= $row[1]?></p>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item"><?= "<b>Teatro:</b> ".$row[3]." ".$row[4]." ".$row[5]?></li>
                    <li class="list-group-item"><?= "<b>Compagnia teatrale:</b> ".$row[2]?></li>
                    <?php
                      $data_e_ora = explode(" ", $row[6]);
                      $data = explode("-", $data_e_ora[0]);
                      $ora = explode(":", $data_e_ora[1]);
                    ?>  
                    <li class="list-group-item"><?= "<b>Data: </b>".$data[2]."/".$data[1]."/".$data[0]?></li>
                    <li class="list-group-item"><?="<b>Ora: </b>".$ora[0].":".$ora[1]?></li>
                    <li class="list-group-item"><?="<b>Prezzo biglietto:</b> ".$row[7]." €"?></li>
                </ul>
            </div>
        <?php endwhile ?>
    </div>

  <footer class="text-center bg-dark text-light">
    <p>© 2020 Copyright - Associazione teatrale "La Veranda"<br>
    Icons made by
        <a href="https://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> 
        from 
        <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
    </p>
  </footer>
  
  </body>
</html>