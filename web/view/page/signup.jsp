<%--
  Created by IntelliJ IDEA.
  User: GHKIM
  Date: 2021-11-29
  Time: 오후 8:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java"
         pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>허밍랜드 회원가입</title>
  <%@ include file="../components/header.jsp"%>
</head>

<body>
<form class="form-signin" action="/user/join" method="post">

    <h1 class="h3 mb-3 font-weight-normal">회원관리</h1>
    <h3>이메일</h3>
    <input type="email" name="email" class="form-control" placeholder="E-mail" >
    <h3>비밀번호</h3>
    <input type="password" name="password" class="form-control" placeholder="Password" >
    <h3>비밀번호 확인</h3>
    <input type="password" name="inputPassword" class="form-control" placeholder="Password" >

    <h3>이름</h3>
    <input type="text" name="name" class="form-control" placeholder="Name" >

    <input type="radio" name="gender" value="female" autofocus>여성
    <input type="radio" name="gender" value="male">남성
    <p>
        <input type="radio" name="authority" value="normal" autofocus>방문객
        <input type="radio" name="authority" value="admin">관리자


    <p><input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in">
</form>

<jsp:include page="/view/components/footer.jsp" flush="false" />

</body>
</html>