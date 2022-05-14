<?php
	include("includes/db.php");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Search Products</title>
	<link rel="stylesheet" type"text/css" href="style.css">
</head>
<body>

<div>
<button style="background-color:#630460; color:white" class="submit-search" onclick="window.location.href='http://ec2-54-165-131-208.compute-1.amazonaws.com/'">Home</button>
<br>
<br>
<form action="search_result.php" method="POST">
	<input type="text" name="search" placeholder="Search">
	<button style="background-color:#630460; color:white"  type=submit" name="submit-search">Search</button>
</form>
</div>

<h1>Search Page</h1>
<h2>All Products:</h2>

<div class="products-container">
	<?php
		$sql = "SELECT * FROM search";
		$result = mysqli_query($con, $sql);
		$queryResults = mysqli_num_rows($result);
		//echo $queryResults;
		if($queryResults > 0){
			
			while($row = mysqli_fetch_assoc($result)){
				echo"<div class='products-box'>
					<h3>".$row['product_title']."</h3>
					<p>".$row['product_url']."</p>
					<p>".$row['product_desc']."</p>	
					</div>";
			}	

		}
		else{
			echo "zero products";
		}
	?>
</div>

</body>
</html>
