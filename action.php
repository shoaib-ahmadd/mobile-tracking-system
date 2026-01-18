<?php
include("connection.php");

if(isset($_POST['imei'])){
    $imei = $_POST['imei'];

    $query = "INSERT INTO log (tower, IMEI, time)
              VALUES ('AUTO_TOWER','$imei',NOW())";

    mysqli_query($conn,$query);
}

header("Location: tracking.php");
exit();
?>
