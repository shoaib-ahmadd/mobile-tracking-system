<? $id=$_REQUEST['id'];
//$status=$_REQUEST['txtstatus'];
include("connection.php");
$query="delete from userdetails where id='".$id."'";
mysqli_query($conn, $query); header("Location:home.php");
 ?>

