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
        <h4 style="padding-left:15px;font-family:'Trebuchet MS', san-serif;">HZS CINEMA</h4>
      </div>
      <div class="col-md-7" style="text-align: right;">
        <ul>
          <li><a href="index.php" class="active">Home</a></li>
          <li><a href="movies.php">Movies</a></li>
          <li><a href="register.php">Register</a></li>
          <li><a href="login.php">Login</a></li>
          <li><a href="admin/login.php">Admin Login</a></li>
        </ul>
      </div>
    </div>
    <!-- Header code ends here -->
    <div class="row">
      <div class="col-md-12" style="padding:15px;margin-left:15px;margin-right:15px;">
        <h4>About</h4>
        <p>Cinema, which is used to educate people, as well as to entertain, influence and direct them, is accepted and used as the most important cultural conveyor of the 21st century. Cinema has the feature of reflecting the social, political and cultural changes and of contributing to reconstruction of reality.
        </p>
      </div>
    </div>
    <center><h3><u>Trending movies</u></h3></center>
    <div class="row" style="margin:20px;">
      <div class="col-md-3">
      <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="images/Movie2.jpg" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title">Starring</h5>
            <p class="card-text"> Emma Stone, Emma Thompson, Joel Fry, Mark Strong, Paul Walter Hauser, John Mccrea, Andrew Leung</p>
            <a href="viewMovie.php?mid=1" class="btn btn-primary btn-sm">View details</a>
            <a href="login.php" class="btn btn-danger btn-sm">Book ticket</a>
          </div>
        </div>
      </div>

      <div class="col-md-3">
      <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="images/Movie3.jpg" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title">Starring</h5>
            <p class="card-text"> Nadhir Nasar, Naim Daniel, Daiyan Trisha, Yusof Hashim, Shasha Abdul, Amir Ahnaf</p>
            <a href="viewMovie.php?mid=2" class="btn btn-primary btn-sm">View details</a>
            <a href="login.php" class="btn btn-danger btn-sm">Book ticket</a>
          </div>
        </div>
      </div>

      <div class="col-md-3">
      <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="images/Movie4.jpg" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title">Starring</h5>
            <p class="card-text">Jenna Ortega, Christina Ricci, Catherine Zeta-Jones, Luis Guzman, Emma Myers, Gwendoline Christe, Isaac Ordonez</p>
            <a href="viewMovie.php?mid=3" class="btn btn-primary btn-sm">View details</a>
            <a href="login.php" class="btn btn-danger btn-sm">Book ticket</a>
          </div>
        </div>
      </div>

      <div class="col-md-3">
      <div class="card" style="width: 18rem;">
          <img class="card-img-top" src="images/Movie5.jpg" alt="Card image cap">
          <div class="card-body">
            <h5 class="card-title">Starring</h5>
            <p class="card-text"> Chloe Grace Moretz, Jamie Blackley, Mireille Enos, Liana Liberato, Stacy Keach, Jakob Davies, Joshua Leonard</p>
            <a href="viewMovie.php?mid=4" class="btn btn-primary btn-sm">View details</a>
            <a href="login.php" class="btn btn-danger btn-sm">Book ticket</a>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
