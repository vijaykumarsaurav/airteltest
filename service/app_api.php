<?php 
include("config.php");

$status_code = "";
$status_message = "";


 if($_REQUEST['type'] === 'register'){


	$firstname =  trim($_REQUEST['firstname']);
	$lastname = trim($_REQUEST['lastname']);
	$mobile = trim($_REQUEST['mobile']);
	$email = trim($_REQUEST['email']);
	$password1 = trim($_REQUEST['password']);

	$sql =  "INSERT `user` SET  `firstname` =  '$firstname',  `lastname` = '$lastname', `mobile` = '$mobile', `email` = '$email', `password` = '$password1'";

	if ($conn->query($sql) === TRUE) {
	    header("Location: ../home.html");
		die();
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

 }


  if($_REQUEST['type'] === 'simpleFormRgister'){


	$firstname =  trim($_REQUEST['firstName']);
	$lastname = trim($_REQUEST['secondName']);
	$address1 = trim($_REQUEST['inputAddress1']);
	$gender = trim($_REQUEST['gender']);
	$address2 = trim($_REQUEST['inputAddress2']);
	$city = trim($_REQUEST['inputCity']);
	$zip = trim($_REQUEST['inputZip']);
	$dob = trim($_REQUEST['inputDOB']);

	$created_at = date("Y-m-d");

	$sql =  "INSERT `consumer` SET   `firstname` ='$firstname', `lastname` ='$lastname' , `gender` = '$gender', `address1`='$address1', `address2` = '$address2', `city`= '$city', `zip`='$zip', `dob`='$dob', `created_at`='$created_at' ";

	if ($conn->query($sql) === TRUE) {

		$sql1 = "SELECT * FROM `consumer`";
		$result = $conn->query($sql1);
		if ($result->num_rows > 0) {
		    $status_code = "success";
			$json = mysqli_fetch_all ($result, MYSQLI_ASSOC);

			$status_message =  $json;
		} 

	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
		die();
	}

 }


 if($_REQUEST['type'] === 'login'){

	$username = $_REQUEST['username'];
	$password = $_REQUEST['password'];

	$sql = "SELECT * FROM `user` where  (`mobile`='$username' || `email` = '$username') && `password` = '$password'";

	$result = $conn->query($sql);

	if ($result->num_rows > 0) {
	    $status_code = "success";
		$status_message = "successfully logged";
	} else {
	     $status_code = "fail";
		 $status_message = "username or password does not matched, please try again";
	}

 }




 header('Content-Type: application/json');


$output->status_code = $status_code;
$output->status_message =$status_message;

echo json_encode($output);

$conn->close();
?>