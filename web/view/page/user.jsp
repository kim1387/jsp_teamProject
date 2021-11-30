<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/30
  Time: 9:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>나의 정보</title>
    <link href="/view/css/common.css" rel="stylesheet">
    <%@ include file="../../view/components/header.jsp"%>
</head>
<body>
    <div class="container">
        <form action="/user/edit" method="post">
            <h1>이름</h1>
            <input type="text" name="name">
            <h1>비밀번호</h1>
            <input type="password" name="password">
<%--            <h1>이메일</h1>--%>
            <input class="hidden" type="email" name="email" value="<%=email%>">
            <button class="btn btn-lg btn-primary btn-block" type="submit" value="/user/edit">로그인</button>
        </form>
    </div>
</body>
<%@ include file="../../view/components/footer.jsp"%>
</html>
