<?php
	$host = "localhost";
	$user = "root";
	$pass = "";
	$db = "crime_portal";

	$conn = new mysqli($host, $user, $pass, $db);
	if($conn->connect_error){
		echo "Failed:" . $conn->connect_error;
	}
	//error_reporting(0);

?>