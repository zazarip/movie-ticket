<?php 
  include('connection.php');
  $query1 = "select * from movies";
  $query_run1 = mysqli_query($connection,$query1);
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Home Page</title>
		<!-- Bootsrap Files -->
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"></link>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
		<!-- CSS Files -->
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body style="overflow-x: hidden; background-color:#E1E2E2;">
    <!-- Header code starts here -->
    <div class="row" id="header">
      <div class="col-md-4" >
        <h4 style="padding-left:15px;font-family:'Trebuchet MS', san-serif;">HZS Cinema</h4>
      </div>
      <div class="col-md-7" style="text-align: right;">
        <ul>
          <li><a href="index.php" class="active">Home</a></li>
          <li><a href="movies.php">Movies</a></li>
          <li><a href="register.php">Register</a></li>
          <li><a href="login.php">Login</a></li>
        </ul>
      </div>
    </div>
    <br>
    <center><h3><u>List Movies</u></h3></center>
    <div class="row" style="margin:20px;">
    <?php 
      while($row = mysqli_fetch_assoc($query_run1))
      { 
      ?>
      <div class="col-md-3">
      <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="images/<?php echo $row['logo']; ?>" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title"></h5>
            <p class="card-text"></p>
            <a href="viewMovie.php?mid=<?php echo $row['id']; ?>" class="btn btn-primary btn-sm">View details</a>
            <a href="login.php" class="btn btn-danger btn-sm">Book ticket</a>
          </div>
        </div>
      </div>
    <?php } ?>
    </div>
  </body>
</html>
