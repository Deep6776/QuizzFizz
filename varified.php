<?php

	session_start();


	$con = mysqli_connect("localhost","root" ,"","sessionpractical")
            or die(mysqli_error($con));
       // $Name = filter_input(INPUT_POST, 'Name');
        $lemail = filter_input(INPUT_POST, 'LEmail');
        
        $lpassword = filter_input(INPUT_POST, 'LPassword');

	$faculty_query = "select * from fac_signup where f_email = '$lemail' && f_password = '$lpassword'";
	$faculty_query_submit = mysqli_query($con ,$faculty_query);
	$faculty_query_submit_num = mysqli_num_rows($faculty_query_submit);
        
        $student_query = "select * from stu_signup where s_email = '$lemail' && s_password = '$lpassword'";
	$student_query_submit = mysqli_query($con ,$student_query);
	$student_query_submit_num = mysqli_num_rows($student_query_submit);
        
        if($faculty_query_submit_num == 1){
                if($faculty_query_submit_num == 1){
                    
                       // $_SESSION['Name']=$Name;
                                        $_session['lemail'] = $lemail;

                        header('location:fac_admin.php');
                    }
                else{
                    
                    $_session['lemail'] = $lemail;
                    echo "Session varible set";
                    header('location:signup.html');
                }
        }
        else{
            if($student_query_submit_num == 1){
                
                //$_SESSION['Name']=$Name;
                $_session['lemail'] = $lemail;
                echo "Session varible";
                header('location:QuizHome.php');
                }
            else{
		header('location:signup.html');
            }
        }

	
?>