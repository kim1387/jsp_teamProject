<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<link rel ="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <meta charset="utf-8">	
    <link href="../css/signin.css" rel="stylesheet">
    
    <title>허밍랜드 로그인- login</title>
    <%@ include file="/view/components/header.jsp"%>
</head>
<body>

	<form class="form-signin">
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>

    <%@ include file="/view/components/footer.jsp"%>
</body>
</html>