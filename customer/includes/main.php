</head>

<body>

  <header class="page-header">
    <!-- topline -->
    <div class="page-header__topline">
      <div class="container clearfix">

	<div class="currency">
	  <a class="currency__change" href="customer/my_account.php?my_orders">
	 
<?php
/*if(!isset($_SESSION['customer_email'])){
	echo "Welcome :Guest"; 
}
else
{ 
	echo "Welcome : " . $_SESSION['customer_email'] . "";
}
*/?>
	  </a>
	</div>
	<div class="basket">
	  <a href="../../cart.php" class="btn btn--basket">
	    <i class="icon-basket"></i>
	    <?php items(); ?> items
	  </a>
	</div>
 

	<ul class="login">

<li class="login__item">
<?php
// if the customer is not logged in, show them the register page
// if the customer is logged in, show them the account page
if(!isset($_SESSION['customer_email'])){
	echo '<a href="../../customer_register.php" class="login__link">Register</a>';
} 
else
{ 
	echo '<a href="my_account.php?my_orders" class="login__link">My Account</a>';
}   
?>  
</li>


<li class="login__item">
<?php
// if the customer is not logged in, show then the sign in page
// if the customer is logged in, show them the logout page
if(!isset($_SESSION['customer_email'])){
	echo '<a href="../../checkout.php" class="login__link">Sign In</a>';
} 
else
{ 
	echo '<a href="../../logout.php" class="login__link">Logout</a>';
}   
?>  

</li>
</ul>

      </div>
    </div>
    <!-- bottomline -->
    <div class="page-header__bottomline">
      <div class="container clearfix">

	<div class="logo">
	  <a class="logo__link" href="../../index.php">
	    <img class="logo__img" src="../../images/game_logo.png" alt="Game Planet" width="450" height="23">
	  </a>
	</div>

	<nav class="main-nav">
	  <ul class="categories">

	    <li class="categories__item">
	      <a class="categories__link" href="../../shop.php?page=1&man[]=9&p_cat[]=15&"> <!-- LINK THE nintendo page here to display it -->
		Nintendo

	      </a>
	      </li>

	    <li class="categories__item">
	      <a class="categories__link" href="../../shop.php?page=1&man[]=10&man[]=14&"> <!-- LINK THE playstation page here to display it -->
		PlayStation

	      </a>
	    </li>

	    <li class="categories__item">
	      <a class="categories__link" href="../../shop.php?page=1&man[]=12&man[]=13&"> <!--LINK THE xbox page here to display it -->
		XBOX

	      </a>
	    </li>

	    <li class="categories__item">
	      <a class="categories__link categories__link--active" href="../../shop.php">
		Shop All
	      </a>
	    </li>

<?php
// if the customer has signed in, allow them to view the my account menu
// if the customer is not signed in, do not show them this menu
if (isset($_SESSION['customer_email'])){
echo '<li class="categories__item">
	      <a class="categories__link" href="customer/my_account.php?my_orders">
		My Account
		<i class="icon-down-open-1"></i>
	      </a>
	      <div class="dropdown dropdown--lookbook">
		<div class="clearfix">
		  <div class="dropdown__half">
		    <div class="dropdown__heading">Account Settings</div>
		    <ul class="dropdown__items">
		      <li class="dropdown__item">
			<a href="my_account.php?my_wishlist" class="dropdown__link">My Wishlist</a>
		      </li>
		      <li class="dropdown__item">
			<a href="my_account.php?my_orders" class="dropdown__link">My Orders</a>
		      </li>
		      <li class="dropdown__item">
			<a href="../../cart.php" class="dropdown__link">View Shopping Cart</a>
		      </li>
		    </ul>
		  </div>
		  <div class="dropdown__half">
		    <div class="dropdown__heading"></div>
		    <ul class="dropdown__items">
		      <li class="dropdown__item">
			<a href="my_account.php?edit_account" class="dropdown__link">Edit Your Account</a>
		      </li>
		      <li class="dropdown__item">
			<a href="my_account.php?change_pass" class="dropdown__link">Change Password</a>
		      </li>
		      <li class="dropdown__item">
			<a href="my_account.php?delete_account" class="dropdown__link">Delete Account</a>
		      </li>
		    </ul>
		  </div>
		</div>
	      </div>
	    </li>';
}?>


	  </ul>
	</nav>
      </div>
    </div>
  </header>

