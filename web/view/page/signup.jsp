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
    var form = document.signup;
    var emailRule = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    var passRule = /^[A-Za-z0-9]{8,20}$/;


    if(!emailRule.test(form.email.value)){
      alert("이메일 양식을 지켰는지 확인해주세요.");
      form.email.select();
      return false;
    }
    if(!passRule(password.value)){
      alert("비밀번호는 문자와 숫자 포함한 8자 이상 20자 이하로 입력 가능합니다.");
      form.password.select();
      return false;
    }

    if(form.inputId.value== ""){
      alert("아이디를 입력해주세요.");
      form.Email.select();
      return false;
    }
    if(form.password.value==""){
      alert("비밀번호를 입력해주세요.");
      form.password.select();
      return false;
    }
      if(form.inputPassword.value != form.Password.value){
          event.preventDefault();
          alert("비밀번호가 위와 동일한지 확인해주세요.");
          form.inputPassword.select();
          return false;
      }

      if(form.inputName.value==""){
          event.preventDefault();
          alert("이름을 입력해주세요.");
          form.name.select();
          return false;
      }

      if(!regExp.test(name.value)){
          alert("이름은 한글로 작성해 주세요");
          return ;
      }


      if(form.inputEmail.value==""){
          event.preventDefault();
          alert("이메일을 입력해주세요.");
          form.email.select();
          return false;
      }
      form.submit();
  }
</script>

<body>
<div class="container">
<form class="signup" class="form-signin" action="/user/join" method="post">
    <h1 class="h3 mb-3 font-weight-normal">회원관리</h1>
    <h3>이메일</h3>
    <input type="email" name="email" class="form-control" placeholder="E-mail" required >
    <h3>비밀번호</h3>
    <input type="password" name="password" class="form-control" placeholder="Password" required >
    <h3>비밀번호 확인</h3>
    <input type="password" name="inputPassword" class="form-control" placeholder="Password" required>
    <h3>이름</h3>
    <input type="text" name="name" class="form-control" placeholder="Name" >
    <input type="radio" name="gender" value="female" autofocus>여성
    <input type="radio" name="gender" value="male">남성
    <p>
      <input type="radio" name="authority" value="normal" autofocus>방문객
      <input type="radio" name="authority" value="admin">관리자
    <p><input type="submit" class="btn btn-lg btn-primary btn-block" value="Sign in" onclick="return checkLogin()" >
  </form>
</div>

<%@ include file="../components/footer.jsp"%>

</body>
</html>