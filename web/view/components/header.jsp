<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>header</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 </head>
<body>
<%
    String email = null;
    String auth = null;
    String AUTH_KEY_NORMAL = "normal";
    String AUTH_KEY_ADMIN = "admin";

    if (session.getAttribute("userEmail") != null) {
        email = (String)session.getAttribute("userEmail");
        auth = (String)session.getAttribute("auth");
    }

%>
<nav class="navbar nav-fills navbar-light bg-light">
    <a class="navbar-brand" href="/view/page/main.jsp">허밍랜드
    </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/view/page/main.jsp">메인화면 <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/view/page/entertainment.jsp">즐길거리</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/view/page/guide.jsp">이용가이드</a>
      </li>
      <li class="nav-item">
        <a onclick="handleClick()" class="nav-link" >소통</a>
      </li>
        <%
            if(email == null) {
        %>
        <li class="nav-item">
            <a class="nav-link" href="/view/page/login.jsp">로그인</a>
        </li>
        <%
        } else {
        %>
        <li class="nav-item">
            <a class="nav-link" href="/logout">로그아웃</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="/view/page/user.jsp">정보 수정하기</a>
        </li>
        <%
            }
        %>
    </ul>
  </div>
</nav>
<script>
    function handleClick(){
        let email = "<%=email%>";
        if(email === "null"){
            alert("소통 게시판은 로그인을 해야 이용 가능합니다.");
            location.href= "/view/page/login.jsp";
        }
        else{
            location.href = "/view/page/board/board_notice.jsp";
        }
    }
</script>
</body>
</html>
