<?php

$username="xsysco";//change username 
	$password="P@55w0rdQwerty"; //change password
	$host="localhost";
	$db_name="xsysco_xsyssecurity"; //change databasename
	

	$connect=mysqli_connect($host,$username,$password,$db_name);
	

	if(!$connect)
	{
		echo json_encode("Connection Failed");
	}
	

	?>