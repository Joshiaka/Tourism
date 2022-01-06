<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="css/styleone.css">
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Spicy+Rice&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Viga&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Fredoka+One&display=swap" rel="stylesheet">

  </head>
  <body>
    <div class="main">
    	<jsp:include page="navbar.jsp"></jsp:include>
    	<div class="container">	
    	<a href="packages">
        <div id="one"class="feature one shadow-lg p-2 rounded">
            <h5><ion-icon name="pricetags-sharp"></ion-icon>PACKAGES</h5>
            <p>Get customized packages as per your convinence</p>
        </div></a>
        <a href="flights">
        <div id="two"class="feature two shadow-lg p-3 rounded">
            <h5><ion-icon name="airplane-sharp"></ion-icon>FLIGHTS</h5>
            <p>Get exciting deals on flights</p>
        </div></a>
        <a href="hotels">
        <div id="three"class="feature three shadow-lg p-3 rounded">
            <h5><ion-icon name="bed-sharp"></ion-icon>HOTELS</h5>
            <p>Get exciting deals on hotels</p>
        </div></a>
        <a href="places">
        <div id="four" class="feature four shadow-lg p-3 rounded">
          <h5><ion-icon name="chatbox-ellipses-sharp"></ion-icon>PLACES</h5>
          <p>Famous places and weekend getaways</p>
        </div></a>
        <img src="img/travel.png" class="image"alt="">
	</div>
	</div>
<div class="main-one">
  <div class="container">
    <h1 class="display-4 f-title">F L I G H T S</h1><br><br>
    <p class="f-para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <br>  <a href="flights" class="f-btn btn btn-primary">F L Y ! !</a><br>

  </div>

  <img src="img/plane.png" class="f-img click" alt="">

</div>
<div class="main-two">
  <div class="container">
    <h1 class="display-4 h-title">H O T E L S</h1><br><br>
    <p class="h-para">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <br> <div class="button-one">

     <a href="hotels" class="h-btn btn btn-primary">B O O K</a><br>
</div>
  </div>

  <img src="img/hotel1.png" class="h-img-one h-imgs" alt="">
  <img src="img/hotel2.png" class="h-img-two h-imgs" alt="">
  <img src="img/hotel3.png" class="h-img-three h-imgs" alt="">
  <img src="img/hotel4.png" class="h-img-four h-imgs" alt="">

</div>
<script type="text/javascript">
function delay (URL) {
  setTimeout( function() { window.location = URL }, 3000 );
}
</script>
<script type="text/javascript">
  function ani(){
    document.getElementById("img").className ="click";
  }
</script>
  <script src="https://unpkg.com/ionicons@5.0.0/dist/ionicons.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>
