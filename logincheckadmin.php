<?php
session_start();
include("connection.php");

$txtuid = $_POST['txtuid'];
$txtpwd = $_POST['txtpwd'];

$_SESSION['username'] = $txtuid;

$query = "SELECT * FROM useradmin WHERE userName='$txtuid' AND password='$txtpwd'";
$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) == 0) {
    header("Location: index.php?flag=FAILED");
    exit();
} else {
    header("Location: reviewdetails.php?flag=success");
    exit();
}
?>
