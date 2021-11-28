<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<link rel ="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<meta charset="UTF-8">
	<link href="/view/css/blog.css" rel="stylesheet">
    <title>허밍랜드 즐길 거리- Huming Land Attraction</title>
    <%@ include file="/view/components/header.jsp"%>
</head>
<body>
<div>
    <div class="container">
        <div class="jumbotron p-3 p-md-5 text-white rounded bg-dark">
        <div class="col-md-6 px-0">
          <h1 class="display-4 font-italic">Attraction</h1>
          <p class="lead my-3">어른들이 동심을 찾는 공간! 환상의 허밍랜드로 놀러오세요!</p>
        </div>
      </div>

      <div class="row mb-2">
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-primary">View</strong>
              <h3 class="mb-0">
                <a class="text-dark" href="#">대관람차</a>
              </h3>
              <div class="mb-1 text-muted">09:00~11:00</div>
              
              <p class="card-text mb-auto">허밍랜드와 도시 풍경이 내려다보이는 대관람차! 소중한 사람과 아름다운 시간을 보내세요</p>
            
            </div>
            <img class="card-img-right flex-auto d-none d-md-block" src="/view/img/amuse_slide_img1.jpg" alt="Card image cap">
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-success">Entertainment</strong>
              <h3 class="mb-0">
                <a class="text-dark" href="#">회전 목마</a>
              </h3>
              <div class="mb-1 text-muted">09:00~11:00</div>
              <p class="card-text mb-auto">허밍랜드 대표 랜드마크 회전목마! 12시가 되면 안돼요~ 집에 가야해요~</p>
            </div>
            <img class="card-img-right flex-auto d-none d-md-block" src="/view/img/amuse_slide_img2.jpg" alt="Card image cap">
          </div>
        </div>
        
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-success">Attraction</strong>
              <h3 class="mb-0">
                <a class="text-dark" href="#">회전 그네</a>
              </h3>
              <div class="mb-1 text-muted">09:00~11:00</div>
              <p class="card-text mb-auto"> 뱅글뱅글 돌고 돌아 이 세상 저 끝까지! 지금까지 이런 그네는 없었다. 이것은 그네인가 놀이기구인가! </p>
            </div>
            <img class="card-img-right flex-auto d-none d-md-block" src="/view/img/amuse_slide_img3.jpg" alt="Card image cap">
          </div>
        </div>
      </div>
    </div>
    </div>
</body>
<%@ include file="/view/components/footer.jsp"%>
</html>
