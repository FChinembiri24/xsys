<?php 
	include "config.php";
	// REGISTER USER
	

	  
	    $name = mysqli_real_escape_string($connect, $_POST['name']);
	    $email = mysqli_real_escape_string($connect, $_POST['email']);
	    $mobile = mysqli_real_escape_string($connect, $_POST['phoneNumber']);
		$Username = mysqli_real_escape_string($connect, $_POST['userID']);
		$address = mysqli_real_escape_string($connect, $_POST['userID']);
		$IMG =mysqli_real_escape_string($connect, $_POST['IMG']);
      
      
      
	 
	        $query = "INSERT INTO user (Username,FullName,Address,Phone,IMG,email)
	  			  VALUES('$Username','$name','$address','$mobile','$mobile''$email')";
	    $results = mysqli_query($connect, $query);
	    if($results>0)
	    {
	        echo "user added successfully";
	    }
	    
	    
	

	

	    
	    
	    ?>