<?php
include("connection.php");

$product     = $_POST['product'];
$description = $_POST['description'];
$location    = $_POST['location'];
$shop        = $_POST['shop'];
$shop1       = $_POST['shop1'];

if($shop == 'other'){
    $shoptype = $shop1;
} else {
    $shoptype = $shop;
}

$query = "INSERT INTO shop (shopname,address,location,shoptype)
          VALUES ('$product','$description','$location','$shoptype')";

mysqli_query($conn, $query);

header("Location: reviewdetails.php");
exit();
?>
