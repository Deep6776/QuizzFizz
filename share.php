<?php


/*session_start();
header('location:home.php');

	$con = mysqli_connect("localhost","root" ,"","sessionpractical")
            or die(mysqli_error($con));
            
	    $name = filter_input(INPUT_POST, 'Name');
        $email = filter_input(INPUT_POST, 'Email');
        $subject = filter_input(INPUT_POST, 'Subject');
        $message = filter_input(INPUT_POST, 'Message');

        $registration_query_insert = "insert into contact(Name,Email,Subject,Message) values('$name','$email','$$subject','$message')" 
        or die(mysqli_error($con));
        $registration_query_insert_submit = mysqli_query($con, $registration_query_insert)
        or die(mysqli_error($con));*/

?>

<?php


session_start();
header('location:contact.html');

	$con = mysqli_connect("localhost","root" ,"","sessionpractical")
            or die(mysqli_error($con));
        echo "<br>Done1";
            
	    $name = filter_input(INPUT_POST, 'Name');
        $email = filter_input(INPUT_POST, 'Email');
        $subject = filter_input(INPUT_POST, 'Subject');
        $message = filter_input(INPUT_POST, 'Message');
echo "<br>Done2";
        
        $registration_query = "select * from contact where name = '$name' && email = '$email' && subject = '$subject' && message='$message'";
	$registration_query_submit = mysqli_query($con ,$registration_query);
	$registration_query_submit_num = mysqli_num_rows($registration_query_submit);

	if($registration_query_submit_num == 1){
		echo "Duplicate data Found...";
	}
	else{
		$registration_query_insert = "insert into contact(Name,Email,Subject,Message) values('$name','$email','$subject','$message')" 
                      or die(mysqli_error($con));
		$registration_query_insert_submit = mysqli_query($con, $registration_query_insert)
                        or die(mysqli_error($con));
                        
                echo "submit";
	}

?>