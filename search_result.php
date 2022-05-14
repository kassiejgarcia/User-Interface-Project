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
<button style="background-color:#630460; color:white" class="submit-search" onclick="window.location.href='http://ec2-54-165-131-208.compute-1.amazonaws.com/search.php'">Search</button>
<button style="background-color:#630460; color:white" class="submit-search" onclick="window.location.href='http://ec2-54-165-131-208.compute-1.amazonaws.com/'">Home</button>

<h1>Search page</h1>

<div class="products-container">
<?php 
if(isset($_POST['submit-search'])){
	$search = mysqli_real_escape_string($con, $_POST['search']); //to avoid injections
	$sql = "SELECT * FROM search WHERE product_title LIKE '%$search%' OR product_desc LIKE '%$search'";
	$result = mysqli_query($con, $sql);
	$queryResult = mysqli_num_rows($result);

	echo "There are " .$queryResult. " results!";

	if($queryResult > 0){
		while($row = mysqli_fetch_assoc($result)){
  
				echo"<a href='http://ec2-54-165-131-208.compute-1.amazonaws.com/details.php?pro_id=" .$row['product_url']."'><div class='products-box'>
				<h3>".$row['product_title']."</h3>
				<p>".$row['product_url']."</p>
				<p>".$row['product_desc']."</p> 
																                                        </div></a>";	
			}
		}
		else{
			echo "No matching results from your search, please search something else!";
		}
	}	

?>
</div>

</body>
</html>

