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
</head>
<body>
<div class="main">
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="clearfix"></div>
	<div class="container mt-5">	
	<h4 class="p-2 text-white">My Bookings</h4>
	
		<table class="table table-bordered table-light shadow">
			<thead>
				<tr>
					<th>Booking Id</th>
					<th>Tour </th>
					<th>Flight</th>
					<th>Hotel</th>
					<th>Booking Date</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="b">
					<tr>
						<td>${b.bid }</td>
						<td>${b.tour.pname }</td>
						<td>${b.flight.fname }</td>
						<td>${b.hotel.hname }</td>
						<td>${b.bdate }</td>
						<td>${b.status }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>