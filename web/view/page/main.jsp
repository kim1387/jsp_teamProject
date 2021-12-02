<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>허밍랜드 - Huming Land</title>
    <%@ include file="../../view/components/header.jsp"%>
    <link href="view/css/album.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="img-fluid" src="/view/img/amuse_slide_img1.jpg" alt="image First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>뱅글뱅글 돌고 돌아 대관람차</h5>
                </div>
            </div>
            <div class="carousel-item">
                <img class="img-fluid" src="/view/img/amuse_slide_img2.jpg" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>12시가 되면 안돼요! 회전목마</h5>
                </div>
            </div>
            <div class="carousel-item">
                <img class="img-fluid" src="/view/img/amuse_slide_img3.jpg" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>더 높이 heigher! 회전그네</h5>
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
            <!-- START THE FEATURETTES -->

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">회전목마<span class="text-muted"> 12시가 되면 안돼요!</span></h2>
                    <p class="lead">허밍랜드 대표 랜드마크 회전목마! 12시가 되면 안돼요~ 집에 가야해요~</p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-fluid mx-auto" style="width: 500px; height: 500px;" src="/view/img/amuse_slide_img1.jpg" data-holder-rendered="true">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">회전그네 <span class="text-muted">더 높이 heigher!</span></h2>
                    <p class="lead">뱅글뱅글 돌고 돌아 이 세상 저 끝까지! 지금까지 이런 그네는 없었다. 이것은 그네인가 놀이기구인가!</p>
                </div>
                <div class="col-md-5 order-md-1">
                    <img class="featurette-image img-fluid mx-auto" style="width: 500px; height: 500px;" src="/view/img/amuse_slide_img2.jpg" data-holder-rendered="true">
                </div>
            </div>

            <hr class="featurette-divider">

            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">대관람차 <span class="text-muted">뱅글뱅글 돌고 돌아 </span></h2>
                    <p class="lead">허밍랜드와 도시 풍경이 내려다보이는 대관람차! 소중한 사람과 아름다운 시간을 보내세요</p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-fluid mx-auto" style="width: 500px; height: 500px;" src="/view/img/amuse_slide_img3.jpg" data-holder-rendered="true">
                </div>
            </div>

            <hr class="featurette-divider">

            <!-- /END THE FEATURETTES -->

        </div>
    </div>
</div>
<jsp:include page="/view/components/footer.jsp" flush="false" />
</body>
</html>
