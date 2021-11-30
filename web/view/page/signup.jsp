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
  <link rel ="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <meta charset="utf-8">
  <link href="./signin.css" rel="stylesheet">

  <title>허밍랜드 회원가입- join</title>
  <%@ include file="../components/header.jsp"%>
</head>

<script type="text/javascript">
  function checkLogin(){
    var form = document.form-signin;

    if(form.inputId.value.length< 8 || form.inputId.value.length>20){
      alert("아이디는 8자 이상 20자 이하로 입력 가능합니다.");
      form.inputId.select();
      return false;
    }
    if(form.inputPassword.value.length<8 || form.inputPassword.value.length>20){
      alert("비밀번호는 8자 이상 20자 이하로 입력 가능합니다.");
      form.inputPassword.select();
      return false;
    }

    if(form.inputId.value== ""){
      alert("아이디를 입력해주세요.");
      form.inputId.select();
      return false;
    }
    if(form.inputPassword.value==""){
      alert("비밀번호를 입력해주세요.");
      form.inputPassword.select();
      return false;
    }
    form.submit();
  }
</script>

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

  <input type="radio" name="gender" value="여성" autofocus>여성
  <input type="radio" name="gender" value="남성">남성
  <p>
    <input type="radio" name="authority" value="normal" autofocus>방문객
    <input type="radio" name="authority" value="admin">관리자


  <p><input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in" onclick="return checkLogin()" >
</form>

<%@ include file="../components/footer.jsp"%>

</body>
</html>