<?php

	session_start();


	$con = mysqli_connect("localhost","root" ,"","sessionpractical")
            or die(mysqli_error($con));
            
	$fname = filter_input(INPUT_POST, 'FName');
        $femail = filter_input(INPUT_POST, 'FEmail');
        $fpassword = filter_input(INPUT_POST, 'FPassword');
        $fusername = filter_input(INPUT_POST, 'FUsername');
        $fphone = filter_input(INPUT_POST, 'FPhone');

	$faculty_query = "select * from fac_signup where f_name = '$fname' && "
                . "f_email = '$femail' && f_password = '$fpassword' && f_username='$fusername' && f_phone='$fphone'";
	$faculty_query_submit = mysqli_query($con ,$faculty_query);
	$faculty_query_submit_num = mysqli_num_rows($faculty_query_submit);

	if($faculty_query_submit_num == 1){
		echo "Duplicate data Found...";
	}
	else{
		$faculty_query_insert = "insert into fac_signup(f_name,f_email,f_password,f_username,f_phone)"
                        . " values('$fname','$femail','$fpassword','$fusername','$fphone')"
                     or die(mysqli_error($con));
		$faculty_query_insert_submit = mysqli_query($con, $faculty_query_insert)
                        or die(mysqli_error($con));
                $_session['fname']=$fname;
                header('location:login.html');
                
              
	}
        
        $sname = filter_input(INPUT_POST, 'SName');
        $semail = filter_input(INPUT_POST, 'SEmail');
        $spassword = filter_input(INPUT_POST, 'SPassword');
        $susername = filter_input(INPUT_POST, 'SUsername');
        $sphone = filter_input(INPUT_POST, 'SPhone');

	$student_query = "select * from stu_signup where s_name = '$sname' && "
                . "s_email = '$semail' && s_password = '$spassword' && s_username='$susername' && s_phone='$sphone' ";
	$student_query_submit = mysqli_query($con ,$student_query);
	$student_query_submit_num = mysqli_num_rows($student_query_submit);

	if($student_query_submit_num == 1){
		echo "Duplicate data Found...";
	}
	else{
		$student_query_insert = "insert into stu_signup(s_name,s_email,s_password,s_username,s_phone)"
                        . " values('$sname','$semail','$spassword','$susername','$sphone')" 
                      or die(mysqli_error($con));
		$student_query_insert_submit = mysqli_query($con, $student_query_insert)
                        or die(mysqli_error($con));
                $_SESSION['sname']=$sname;
                header('location:login.html');
                
                
        }
                      
?>


