<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="css/styleone.css">
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Spicy+Rice&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Viga&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Fredoka+One&display=swap" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
  
</head>
<body>
<div class="main">
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="clearfix"></div>
	<div class="container mt-5">
	<c:if test="${sessionScope.role eq 'Admin' }">	
	<button type="button" class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#addflight">
  Add New
</button>
</c:if>
	<h4 class="p-2 text-white">Flights Page</h4>
	<c:forEach items="${list }" var="f">
	<div class="container">
        <h1 class="hhh">BOOK</h1>
      <div class="ticket shadow-lg p-3 mb-5 bg-white">
        <div class="row bg1">
          <h3>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp${f.fname }</h3>
        </div>
        <div class="row bg1">
        <p class="from">FROM: <br>${f.fromcity }, ${f.fromstate } ${f.fromcountry } </p>
        <p class="to">TO:<br>${f.tocity }, ${f.tostate } ${f.tocountry } </p>
        <p class="dept">DEPT TIME:<br> 7:00 AM</p>
        <p class="dest">DEST TIME: <br>11:00 PM</p>
        <p class="eprice">&#8377; ${f.fare }*</p>
        </div>
      </div>
    </div>
    </c:forEach>
    
    
	</div>
</div>
<div class="modal fade" id="addflight" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <form method="post">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Flight</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">Flight Name</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="fname">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">From Country</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="fromcountry">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">From State</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="fromstate">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">From City</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="fromcity">
			</div>
		</div>
		
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">To Country</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="tocountry">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">To State</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="tostate">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">To City</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="tocity">
			</div>
		</div>
		
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">Fare</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="fare">
			</div>
		</div>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>