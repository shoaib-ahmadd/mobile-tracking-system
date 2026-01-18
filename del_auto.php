<?php $id=$_REQUEST['id'];
include("connection.php");
$query="DELETE FROM shop WHERE id ='".$id."'";
mysqli_query($conn, $query);header("Location: reviewdetails.php");
mysqli_close($link);
?>

