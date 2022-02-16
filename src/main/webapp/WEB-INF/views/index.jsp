<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Hello</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body>
<div class="container-xl m-auto">
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/resources/img/mainImage1.png" class="d-block w-100" alt="Image1">
            </div>
            <div class="carousel-item">
                <img src="/resources/img/mainImage2.png" class="d-block w-100" alt="Image2">
            </div>
            <div class="carousel-item">
                <img src="/resources/img/mainImage3.png" class="d-block w-100" alt="Image3">
            </div>
        </div>
        <a class="carousel-control-prev" role="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        </a>
        <a class="carousel-control-next" role="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
        </a>
        <script>
            $(function(){
                $('.carousel-control-prev').click(function() {
                    $('#carouselExampleControls').carousel('prev');
                });
                $('.carousel-control-next').click(function() {
                    $('#carouselExampleControls').carousel('next');
                });
                $('#carouselExampleControls').carousel({
                    //슬라이딩 자동 순환 지연시간. false면 순환 X
                    interval: 7000,
                    //hover할 시 자동순환 멈춤
                    pause: "hover",
                    //순환 설정
                    wrap: true,
                    //키보드 이벤트 설정 여부
                    keyboard: true
                });
            });
        </script>
    </div>
</div>


<div class="container p-3">
    <div class="row row-cols-2 row-cols-lg-4 g-2 g-lg-3">
        <div class="col">
            <div class="container-sm" id="ct1">
                <span><h5>Gaming accessories</h5></span>
                <c:forEach var="category" items="${category}" begin="0" end="4">
                    <c:if test="${category.cateLv == 2}">
                        <figure class="figure">
                            <img src="/resources/img/orders/ct${category.cateID}.PNG" class="figure-img img-fluid rounded" alt="ct1-1">
                            <figcaption class="figure-caption">${category.cateName}</figcaption>
                        </figure>
                    </c:if>
                </c:forEach>
            </div>
            <a href="#">See more</a>
        </div>
        <div class="col">
            <div class="container-sm" id="Cate2">
                <span><h5>"Alexa, play music."</h5></span>
                <img src="/resources/img/orders/alexa1.png"/>
                <a href="#">Shop Echo Dot</a>
            </div>
        </div>
        <div class="col">
            <div class="container-sm" id="ct">
                <span><h5>Shop by Category</h5></span>
                <c:forEach var="category" items="${category}" begin="0">
                    <c:if test="${category.cateLv == 1}">
                        <figure class="figure">
                            <a href="/orders?cateID=${category.cateID}">
                                <img src="/resources/img/orders/ct${category.cateID}.PNG"
                                     class="figure-img img-fluid rounded" alt="ct">
                                <figcaption class="figure-caption">${category.cateName}</figcaption>
                            </a>
                        </figure>
                    </c:if>
                </c:forEach>
            </div>
        </div>
        <div class="col">
            <div class="container-sm">
                <span><h5>Sign in for the best experience</h5></span>
                <button type="button" class="btn btn-warning px-lg-5 mb-5" onclick="location.href='/member/login'">
                    Sign in securely
                </button>
                <img src="/resources/img/orders/shipProducts.PNG"/>
            </div>
        </div>
        <div class="col">
            <div class="container-sm" id="Cate2">
                <span><h5>Luna Next Year</h5></span>
                <img src="/resources/img/orders/luna.PNG"/>
                <a href="#">Shop Now</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>