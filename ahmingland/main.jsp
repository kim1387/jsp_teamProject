<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>허밍랜드 - Huming Land</title>
    <%@ include file="./header.jsp"%>
    <link href="album.css" rel="stylesheet">
    
</head>
<body>
<div>
<%--    slider    --%>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="img-fluid" src="./img/amuse_slide_event1.png" alt="image First slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>1번 이미지</h5>
                    <p>1번 이미지</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="img-fluid" src="./img/amuse_slide_event2.png" alt="Second slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>2번 이미지</h5>
                    <p>2번 이미지</p>
                </div>
            </div>
            <div class="carousel-item">
                <img class="img-fluid" src="./img/amuse_slide_event3.png" alt="Third slide">
                <div class="carousel-caption d-none d-md-block">
                    <h5>3번 이미지</h5>
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
    
    <H1>즐길거리.</H1>
    <H2> Entertainment </H2>

    <main role="main">
      <div class="album py-5 bg-light">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="./img/amuse_slide_img1.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"> 뱅글뱅글 돌고 돌아 대관람차 </p>
                  
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="./img/amuse_slide_img2.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"> 12시가 되면 안돼요! 회전목마</p>
                  
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="./img/amuse_slide_img3.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"> 더 높이 heigher! 회전그네 </p>
                  
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="./img/amuse_slide_img2.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"> 12시가 되면 안돼요! 회전목마</p>                  
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="./img/amuse_slide_img3.jpg" alt="Card image cap">
                <div class="card-body">
				<p class="card-text"> 더 높이 heigher! 회전그네 </p>

                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="./img/amuse_slide_img1.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"> 뱅글뱅글 돌고 돌아 대관람차 </p>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="./img/amuse_slide_img3.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"> 더 높이 heigher! 회전 그네 </p>
                  
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="./img/amuse_slide_img1.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"> 뱅글뱅글 돌고 돌아 대관람차 </p>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="./img/amuse_slide_img2.jpg" alt="Card image cap">
                <div class="card-body">
                  <p class="card-text"> 12시가 되면 안돼요! 회전목마</p>                  
                </div>
              </div>
            </div>
          </div>
    
</div>
</body>
<%@ include file="./footer.jsp"%>
</html>
