<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");


?>


  <!-- MAIN -->
  <main>
    <!-- NERO -->
  <!-- --------************   <div class="nero">
      <div class="nero__heading">
        <span class="nero__bold">Register</span> an account with Hug With Mug!
      </div>
      <p class="nero__text">
      </p>
    </div> -->
  </main>


<div id="content" ><!-- content Starts -->
<div class="container" ><!-- container Starts -->





<div class="col-md-12" ><!-- col-md-12 Starts -->

<div class="box" ><!-- box Starts -->

<div class="box-header" ><!-- box-header Starts -->

<center><!-- center Starts -->

<h2> Register A New Account </h2>



</center><!-- center Ends -->

</div><!-- box-header Ends -->

<form action="customer_register.php" method="post" enctype="multipart/form-data" ><!-- form Starts -->

<div class="form-group" ><!-- form-group Starts -->

<label> Enter your full name:</label>

<input placeholder="First Last" type="text" class="form-control" name="full_name" required>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Enter a Unique username:</label>

<input placeholder="Username" type="text" class="form-control" name="username" required>

</div><!-- form-group Ends -->
<div class="form-group"><!-- form-group Starts -->

<label> Enter your email address:</label>

<input placeholder="email@example.com" type="text" class="form-control" name="email" required>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Enter a Unique password:</label>

<input placeholder="Password" type="password" class="form-control" id="pass" name="password" required>
</div><!-- form-group Ends -->


<div class="form-group"><!-- form-group Starts -->

<label> Confirm Password:</label>

<input placeholder="Password" type="password" class="form-control confirm" id="con_pass" required>

</div><!-- form-group Ends -->
<div class="form-group"><!-- form-group Starts -->

<label> Customer Contact </label>

<input placeholder="(xxx)xxx-xxxx" type="text" class="form-control" name="contact" required>

</div><!-- form-group Ends -->

<div class="form-group"><!-- form-group Starts -->

<label> Customer Address </label>

<input placeholder="Stree Address" type="text" class="form-control" name="address" required>


<!--
<div class="form-group">

 <label> Customer Address </label>

<input type="text" class="form-control" name="c_address" required>

</div>
-->
<center>

<div class="text-center"><!-- text-center Starts -->

<button type="submit" name="register" class="btn btn-primary">

<i class="fa fa-user-md"></i> Register

</button>

</div><!-- text-center Ends -->

</form><!-- form Ends -->

</div><!-- box Ends -->

</div><!-- col-md-12 Ends -->



</div><!-- container Ends -->
</div><!-- content Ends -->



<?php

include("includes/footer.php");

?>

<?php

if(isset($_POST['register'])){

	/* first, we make sure there is no 2 usernames or emails */

// initialize the statement
	$stmt = mysqli_stmt_init($con);
	if (!$stmt)
		exit("<p>Failed to initialize statement</p>");

	// prepare the statement 
	$query = "SELECT username, customer_email FROM customers"; // select all usernames and emails from the table
	if (!mysqli_stmt_prepare($stmt, $query))
		exit("<p>Failed to prepare statement</p>");
	// execute the query
	if (!mysqli_stmt_execute($stmt))
		exit("<p>Failed to execute statement</p>");
	// bind the result variables
	mysqli_stmt_bind_result($stmt, $savedusernames, $savedemails);

	// go through all the usernames in the table, if they match the given username, return an error
	while(mysqli_stmt_fetch($stmt) != NULL){
		if($savedusernames == trim($_POST['username'])){
		echo "<script>alert('This username is already registered, try another one')</script>";
			exit();
		}
	}
	// go through all the emails next
	while(mysqli_stmt_fetch($stmt) != NULL){
		if($savedemails == trim($_POST['email'])){
			echo "<script>alert('This email is already registered, try another one')</script>";
			exit();
		}
	}
/* if no errors, register the user into the database */

	// prepare statement	
	$query = "INSERT INTO customers (full_name, username, customer_email, customer_pass, customer_contact, customer_address) VALUES (?, ?, ?, ?, ?, ?)";
	if (!mysqli_stmt_prepare($stmt, $query))
		exit("<p>statement failed to prepare</p>");

	// bind the parameters
	$hashed_result = $_POST['password']; // hash the plaintext password given
	mysqli_stmt_bind_param($stmt, "ssssss", $_POST['full_name'], trim($_POST['username']), trim($_POST['email']), $hashed_result, trim($_POST['contact']), $_POST['address']);
	// execute query
	if (!mysqli_stmt_execute($stmt))
		exit("<p>Failed to execute statement</p>");
	
	mysqli_stmt_close($stmt);
	mysqli_close($con);

	// redirect after successful registration
	$c_ip = getRealUserIp();
	$sel_cart = "select * from cart where ip_add='$c_ip'";

$run_cart = mysqli_query($con,$sel_cart);

$check_cart = mysqli_num_rows($run_cart);

if($check_cart>0){

$_SESSION['customer_email']=$email;

echo "<script>alert('You have been Registered Successfully')</script>";

echo "<script>window.open('checkout.php','_self')</script>";

}else{

$_SESSION['customer_email']=$email;

echo "<script>alert('You have been Registered Successfully')</script>";

echo "<script>window.open('index.php','_self')</script>";


}
	exit();
}
?>

