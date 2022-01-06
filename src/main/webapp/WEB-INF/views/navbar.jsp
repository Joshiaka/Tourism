<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<a href="/">
        <div class="top">
          <img class="logo" src="img/logo.png" alt="">
          <h1 class="title"><b>TRAVEL TRIP - ${sessionScope.role }</b></h1>
        </div>
        </a>
	<nav class="navbar sticky-top" style="background:none;">
        <ul class="nav">
        <c:if test="${sessionScope.role eq 'User' }">
        <li class="nav-item">
          <a class="nav-link active" href="dashboard">Bookings</a>
        </li>
        </c:if>
        <c:if test="${sessionScope.role eq 'Admin'}">
        <li class="nav-item">
          <a class="nav-link active" href="bookings">BOOKINGS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="users">USERS</a>
        </li>
        </c:if>
        <li class="nav-item">
          <a class="nav-link active" href="packages">PACKAGES</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="flights">FLIGHTS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="hotels">HOTELS</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="places">PLACES</a>
        </li>
        <c:if test="${sessionScope.userid eq null }">
        <li class="nav-item">
          <a class="nav-link" href="login">LOGIN</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="register">REGISTER</a>
        </li>
        </c:if>
        <c:if test="${sessionScope.userid ne null }">
        <li class="nav-item">
          <a class="nav-link active" href="logout">LOGOUT</a>
        </li>
        </c:if>
      </ul>
    </nav>