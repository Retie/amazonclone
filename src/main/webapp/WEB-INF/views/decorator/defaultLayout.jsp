<%@page import="clone.amazon.domain.Member"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.js"></script>

<head>
<sitemesh:write property='head' />
<!--  bootstrap css -->
<link rel="stylesheet" href="/resources/css/bootstrap.css">
</head>

<body>
<%  String[] locale = Locale.getISOCountries();
    String sessionName = (String) session.getAttribute("sessionName");
    String memberName = "";

    if(sessionName != null){
        memberName = sessionName;
    } else {
        memberName = "Sign in";
    }
%>
<!-- header -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/main">Amazon</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="small">Deliver to<br></span>
        Republic of Korea<span class="sr-only">(current)</span></a>
      </li>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-3 my-sm-0" type="submit">Search</button>
    </form>
    
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Hello, <%=memberName%><br>Account & Lists
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown"> 
        <button class="btn btn-outline-success my-3 my-sm-0" onclick="location.href='/member/login'">Sign in</button>
		<div class="">New customer? <a href="/member/join">start here.</a></div>
          <div class="dropdown-divider"></div> <b>Your Account</b>
          <a class="dropdown-item" href="#">Account</a>
          <a class="dropdown-item" href="#">Orders</a>
          <a class="dropdown-item" href="#">Watchlist</a>
        </div>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="#">Returns<br>& Orders</a>
      </li>
      
      <li class="nav-item active">
      	<a class="nav-link" href="#">Cart</a>
    </ul>
    
  </div>
</nav>
	<div>
		<sitemesh:write property='body' />
	</div>
	<script type="text/javascript" src="/resources/js/bootstrap.js"></script>
</body>
</html>

