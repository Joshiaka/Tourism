<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotels Page</title>
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
<div class="main" style="background-attachment:fixed;">
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="clearfix"></div>
	<div class="container mt-5">
	<c:if test="${sessionScope.role eq 'Admin' }">
	<button type="button" class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#addhotel">
  Add New
</button>
</c:if>
	<a href="addhotel" class=""></a>
		
	<h4 class="p-2 text-white">Hotels Page</h4>
	
	<c:forEach items="${list }" var="h">
	<div class="hotel">
  <div class="container">
    <div class="row shadow-lg p-3 mt-5 mb-5 rounded">
      <div class="col-md-4 ">
        <img class="h-img shadow-lg" src="img/hotel1.png" alt="image">
      </div>
      <div class="col-md-8">
        <p class="h-name">${h.hname }</p>
        <p class="h-add">${h.city }, ${h.state } ${h.country }<br>1KM from nearest airport.</p>
        <p class="h-price">&#8377;${h.fare }*</p>
        <p class="h-pricex">/night</p>
      </div>
    </div>
  </div>
  </div>
  </c:forEach> 

<div class="modal fade" id="addhotel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <form method="post">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Hotel</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">Hotel Name</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="hname">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">Country</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="country">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">State</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="state">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">City</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="city">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">Fare per nights</label>
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