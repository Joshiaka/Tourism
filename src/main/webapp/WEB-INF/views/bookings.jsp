<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Page</title>
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
	<div class="clearfix"></div>
	<div class="container mt-5">
	<h5 class="p-2 text-white float-right">Hi ! ${sessionScope.uname }</h5>	
	<h4 class="p-2 text-white">Bookings Page</h4>
	
	<div class="row">
			<div class="col-sm-5 mx-auto">
				<form method="post" class="card shadow">
					<input type="hidden" name="userid" value="${sessionScope.userid }">
					<div class="card-body">
						<div class="form-group">
							<label>Select Tour</label>
							<select required name="pkgid" class="form-control">
								<option value="">Select Tour</option>
								<c:forEach items="${tours }" var="t">
								<option value="${t.pid }">${t.pname }</option>
								</c:forEach>
							</select>
						</div>
						
						<div class="form-group">
							<label>Select Flight</label>
							<select required name="fid" class="form-control">
								<option value="">Select Flight</option>
								<c:forEach items="${flights }" var="f">
								<option value="${f.id }">${f.fname }</option>
								</c:forEach>
							</select>
						</div>
						
						<div class="form-group">
							<label>Select Hotel</label>
							<select required name="hid" class="form-control">
								<option value="">Select Hotel</option>
								<c:forEach items="${hotels }" var="h">
								<option value="${h.id }">${h.hname }</option>
								</c:forEach>
							</select>
						</div>
						
						<div class="form-group">
							<label for="insurance">Travel Insurance</label>
							<input type="checkbox" id="insurance" class="form-check-inline" name="insurance" value="1">
						</div>
						
						<div class="form-group">
							<label for="insurance">Booking Date</label>
							<input type="date" class="form-control" name="bdate">
						</div>
						<button type="submit" class="btn btn-primary float-right">Proceed to Payment</button>
					</div>
				</form>
			</div>
		</div>
		
	</div>
</div>
</body>
</html>