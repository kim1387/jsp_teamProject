<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
	<link rel ="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta charset="utf-8">	
    <title>허밍랜드 로그인- login</title>

    <link href="./signin.css" rel="stylesheet">
	<%@ include file="./header.jsp"%>    
</head>

<script type="text/javascript">
	function checkLogin(){
		var form = document.formsignin;
		
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
		form.submit();
	}
</script>

<body>
	<form name="formsignin">

      <h1 class="h3 mb-3 font-weight-normal">Please login</h1>

      <label for="inputId" class="sr-only">ID</label>
      <input type="text" id="inputId" class="form-control" placeholder="Id" autofocus>
      
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" >

      <p><input type="submit" class="btn btn-lg btn-primary btn-block" value="Login" onclick="checkLogin()" >
    </form>
    
	<%@ include file="./footer.jsp"%>

</body>
</html>