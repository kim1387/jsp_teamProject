<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta charset="utf-8">	        
    <title>허밍랜드 회원가입- join</title>
    
	<%@ include file="./header.jsp"%>
    <link href="./signin.css" rel="stylesheet">
	
</head>

<script type="text/javascript">
	function checkLogin(){
		var form = document.formjoin;
		
		if(form.inputId.value.length< 8 || form.inputId.value.length>20){
			event.preventDefault();
			alert("아이디는 8자 이상 20자 이하로 입력 가능합니다.");
			form.inputId.select();	
			return false;
		}
		if(form.inputPassword.value.length<8 || form.inputPassword.value.length>20){
			event.preventDefault();
			alert("비밀번호는 8자 이상 20자 이하로 입력 가능합니다.");
			form.inputPassword.select();
			return false;
		}
		if(form.inputPassword.value != form.checkPassword.value){
			event.preventDefault();
			alert("입력한 비밀번호를 확인해주세요.");
			form.inputPassword.select();
			return false;
		}
		
		if(form.inputId.value== ""){
			event.preventDefault();
			alert("아이디를 입력해주세요.");
			form.inputId.select();	
			return false;
		}
		if(form.inputPassword.value==""){
			event.preventDefault();
			alert("비밀번호를 입력해주세요.");
			form.inputPassword.select();
			return false;
		}
		if(form.inputName.value==""){
			event.preventDefault();
			alert("이름을 입력해주세요.");
			form.inputName.select();
			return false;
		}
		if(form.inputEmail.value==""){
			event.preventDefault();
			alert("이메일을 입력해주세요.");
			form.inputEmail.select();
			return false;
		}
		form.submit();
	}
</script>

<body>

<form name="formjoin">

      <h1 class="h3 mb-3 font-weight-normal">Join HummingLand</h1>

	  <h3>아 이 디</h3>
	  <input type="text" id="inputId" class="form-control" placeholder="Id" autofocus>
	  <h3>비밀번호</h3> 
	  <input type="password" id="inputPassword" class="form-control" placeholder="Password" >
	  <h3>비밀번호 확인</h3> 
	  <input type="password" id="checkPassword" class="form-control" placeholder="Password" >
	  
	  <h3>이름</h3>
	  <input type="text" id="inputName" class="form-control" placeholder="Name" >
	  <h3>이메일</h3>
	  <input type="email" id="inputEmail" class="form-control" placeholder="E-mail" >
	  
	  <input type="radio" name="gender" value="여성"  checked="checked" >여성
	  <input type="radio" name="gender" value="남성">남성
	  <br>
	  <input type="radio" name="auth" value="방문객"  checked="checked" >방문객
	  <input type="radio" name="auth" value="관리자">관리자
	  

      <p><input type="submit" class="btn btn-lg btn-primary btn-block" value="Join with" onclick="checkLogin()"  >
    </form>
    
	<%@ include file="./footer.jsp"%>

</body>
</html>