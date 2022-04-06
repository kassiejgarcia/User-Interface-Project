<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>


  <!-- Cover -->
  <main>
    <div class="image-container">
      <a href="shop.php"><img class = "slidepic" src="images/nintendo_showcase_index.jpeg" id = "pic3"/>
</a>
<a href="shop.php"><img class = "slidepic" src="/images/activision_showcase_index.png" id = "pic2"/></a>
<a href="shop.php"><img class = "slidepic" src="/images/ea_showcase_index.jpeg" id = "pic1"/>
</a>
    </div>
    <!-- Main -->
    <div class="wrapper">
            <h1>BESTSELLERS<h1>
            
      </div>



    <div id="content" class="container"><!-- container Starts -->

    <div class="row"><!-- row Starts -->
<?php
/* in the functions/functions.php, run getPro() which gets 8 products to display on our home page */

    getPro();

    ?>

    </div><!-- row Ends -->

    </div><!-- container Ends -->
<?php /* FOOTER */
include("includes/footer.php");
?>
</body>

</html>
