<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>이용 가이드</title>
</head>
<%@ include file="/view/components/header.jsp"%>
<body>
<div class="container py-3">
    <h2 class="display-6 text-center mb-4">이용 요금</h2>
    <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
                <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">심야이용권</h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title pricing-card-title">After4</h1>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>어른 48,000원 <fmt:formatNumber value="40.78" type="currency" currencySymbol="$" /></li>
                        <li>청소년 42,000원 <fmt:formatNumber value="35.68" type="currency" currencySymbol="$" /></li>
                        <li>어린이 36,000원 <fmt:formatNumber value="30.59" type="currency" currencySymbol="$" /></li>
                        <li>베이비 15,000원 <fmt:formatNumber value="12.74" type="currency" currencySymbol="$" /></li>
                    </ul>
                    <button type="button" class="w-100 btn btn-lg btn-outline-primary">예매하기</button>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm">
                <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">일반이용권</h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title pricing-card-title">1Day</h1>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>어른 59,000원 <fmt:formatNumber value="50.13" type="currency" currencySymbol="$" /></li>
                        <li>청소년 52,000원 <fmt:formatNumber value="44.18" type="currency" currencySymbol="$" /></li>
                        <li>어린이 47,000원 <fmt:formatNumber value="44.18" type="currency" currencySymbol="$" /></li>
                        <li>베이비 15,000원 <fmt:formatNumber value="12.74" type="currency" currencySymbol="$" /></li>
                    </ul>
                    <button type="button" class="w-100 btn btn-lg btn-outline-primary">예매하기</button>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card mb-4 rounded-3 shadow-sm border-primary">
                <div class="card-header py-3 text-white bg-primary border-primary">
                    <h4 class="my-0 fw-normal">매직패스 프리미엄</h4>
                </div>
                <div class="card-body">
                    <h3 class="card-title pricing-card-title">원하는 어트랙션을 예약없이 바로 즐기는 프리미엄 서비스!</h3>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>5회권 (5회 이용 가능) 47,000원 <fmt:formatNumber value="39.93" type="currency" currencySymbol="$" /></li>
                        <li>10회권 (10회 이용 가능) 85,000원 <fmt:formatNumber value="72.22" type="currency" currencySymbol="$" /></li>
                        <li>(※구매당일 한정, 1인 1매 사용)</li>
                    </ul>
                    <button type="button" class="w-100 btn btn-lg btn-primary">예매하기</button>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <h2 class="display-6 text-center mb-4">오시는 길</h2>
        <div class="row">
            <div class="col">
                <div id="googleMap" style="width:100%;height:400px;"></div>
            </div>
            <div class="col">
                <ol class="list-group list-group-numbered">
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div class="ms-2 me-auto">
                            <h5 class="fw-bold">지하철 이용시</h5>
                            잠실역 4번 출구
                        </div>
                        <span class="badge rounded-pill" style="background-color: #5ab354; color: white;">2호선</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div class="ms-2 me-auto">
                            <h5 class="fw-bold">지하철 이용시</h5>
                            잠실역 4번 출구
                        </div>
                        <span class="badge rounded-pill" style="background-color: #e04582; color: white;">8호선</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div class="ms-2 me-auto">
                            <h5 class="fw-bold">버스 이용시</h5>
                            3217번, 3313번, 3314번, 3315번, 3317번, 3411번, 3414번, 4319번
                        </div>
                        <span class="badge rounded-pill" style="background-color: #62af1e; color: white;">지선</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between align-items-start">
                        <div class="ms-2 me-auto">
                            <h5 class="fw-bold">버스 이용시</h5>
                            1007-1번, 1100번, 1700번, 2000번, 6900번, 7007번, 8001번
                        </div>
                        <span class="badge rounded-pill" style="background-color: #d63945; color: white;">광역</span>
                    </li>
                </ol>
            </div>
        </div>
    </div>
    <div>
        <h2 class="display-6 text-center mt-5">가이드 맵</h2>
        <div class="px-4 py-5 text-center">
            <img class="d-block mx-auto mb-4" src="/view/img/amuse_slide_event1.png" alt="" width="80%">
            <h1 class="display-5 fw-bold">보다 편하게, 보다 알차게
                모험을 즐기세요!</h1>
            <div class="col-lg-6 mx-auto">
                <p class="lead mb-4">지금 바로 허밍랜드 가이드 맵을 다운받으세요!<br>
                    어트랙션, 다이닝, 쇼핑 가이드를 한 눈에 확인 할 수 있습니다.</p>
                <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                    <button type="button" class="btn btn-primary btn-lg px-4 gap-3">다운받기</button>
                </div>
            </div>
        </div>
    </div>
    <script>
    function myMap() {
        var mapProp= {
            center:new google.maps.LatLng(37.511036,127.098466),
            zoom:16,
        };
        //TODO
        var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
    }
    </script>
</div>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDfYaMQfIy4-9TWEGcgaJUJU5v-wln5BvU&callback=myMap"></script>
<jsp:include page="/view/components/footer.jsp" flush="false" />
</body>
</html>
