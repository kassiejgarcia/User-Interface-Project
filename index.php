<?php
/* This file is our homepage. It can be visited by clicking on our logo or just entering the website URL */
session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>


  <!-- slide show cover images -->
  <main>
<div class="image-container">
<img class = "slidepic" src="/images/merch_image.png" id = "pic3"/>
<img class = "slidepic" src="/images/matcha_tea_image.png" id = "pic2"/>
<img class = "slidepic" src="/images/hug_w_mug_image.png" id = "pic1"/>
</div>
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
