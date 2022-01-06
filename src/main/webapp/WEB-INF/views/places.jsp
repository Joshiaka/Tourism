<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Places Page</title>
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
	<button type="button" class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#addplace">
  Add New
</button>
</c:if>
	<h4 class="p-2 text-white">Places Page</h4>
	
	<c:forEach items="${list }" var="p">
	<div class="row mt-5 mb-5 fly-box" style="overflow:hidden">
	  <div class="offset-1 col-md-4 shadow-lg p-3 rounded p-box">
	    <img class="p-img" src="${p.photo }" alt="image">
	  </div>
	  <div class="col-md-6 shadow-lg p-3 desc rounded">
	    <h2>${p.pname }</h2>
	    <p>${p.description }</p>
	  </div>
	  <h1 class="fly">${p.pname }</h1>
	</div>
	</c:forEach>

	</div>
</div>
<div class="modal fade" id="addplace" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
    <form method="post" enctype="multipart/form-data">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add New Place</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">Place Name</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="pname">
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
			<label for="insurance" class="col-sm-4 col-form-label">Description</label>
			<div class="col-sm-8">
			<input type="text" class="form-control" name="description">
			</div>
		</div>
		<div class="form-group form-row">
			<label for="insurance" class="col-sm-4 col-form-label">Photo</label>
			<div class="col-sm-8">
			<input type="file" accept=".jpg,.png" class="form-control-file" name="pic">
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