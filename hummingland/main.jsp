<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>메인페이지</title>
    <%@ include file="./header.jsp"%>
</head>
<body>
<div class="container">
    <H1>This is the home page.</H1>
    <H2> Body Part.</H2>
<%--    slider    --%>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="img-fluid" src="./img/amuse_slide_img1.jpg" alt="image First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>1번 이미지</h5>
                    <p>1번 이미지</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="img-fluid" src="./img/amuse_slide_img2.jpg" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>2번 이미지</h5>
                    <p>2번 이미지</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="img-fluid" src="./img/amuse_slide_img3.jpg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>번 이미지</h5>
                    <p>3번 이미지</p>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
</body>
<%@ include file="./footer.jsp"%>
</html>
