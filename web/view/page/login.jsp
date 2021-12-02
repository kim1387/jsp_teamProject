<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<link rel ="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta charset="utf-8">	
    <link href="../css/signin.css" rel="stylesheet">
    
    <title>허밍랜드 로그인- login</title>
    <%@ include file="../../view/components/header.jsp"%>
</head>
<script type="text/javascript">
    function checkLogin(){
        var form = document.formsignin;

        if(!emailRule.test(form.email.value)){
            event.preventDefault();
            alert("이메일 양식을 지켰는지 확인해주세요.");
            form.email.select();
            return false;
        }
        if(form.password.value.length<8 || form.password.value.length>20){
            event.preventDefault();
            alert("비밀번호는 8자 이상 20자 이하로 입력 가능합니다.");
            form.password.select();
            return false;
        }

        if(form.email.value== ""){
            event.preventDefault();
            alert("이메일을 입력해주세요.");
            form.email.select();
            return false;
        }
        if(form.password.value==""){
            event.preventDefault();
            alert("비밀번호를 입력해주세요.");
            form.password.select();
            return false;
        }
        form.submit();
    }
</script>

<body>

	<form name="formsignin" class="mt-5 form-signin" action="/user/login" method="post">
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" name="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <div class="checkbox mb-3">
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
        <a href = "/view/page/signup.jsp" class="btn btn-lg bg-Success btn-block " style= "color: white; text-decoration: none;">회원가입</a>
    </form>

    <%@ include file="../../view/components/footer.jsp"%>
</body>
</html>