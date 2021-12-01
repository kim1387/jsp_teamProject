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
<body>

	<form class="mt-5 form-signin" action="/user/login" method="post">
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