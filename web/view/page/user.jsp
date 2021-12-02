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
    <%@ include file="../../view/components/header.jsp"%>
    <link href="/view/css/common.css" rel="stylesheet">
</head>
<body>

<%--        <form action="/user/edit" method="post">--%>
<%--            <h1>이름</h1>--%>
<%--            <input type="text" name="name">--%>
<%--            <h1>비밀번호</h1>--%>
<%--            <input type="password" name="password">--%>
<%--&lt;%&ndash;            <h1>이메일</h1>&ndash;%&gt;--%>
<%--            <input class="hidden" type="email" name="email" value="<%=email%>">--%>
<%--            <button class="btn btn-lg btn-primary btn-block" type="submit" value="/user/edit">로그인</button>--%>
<%--        </form>--%>
    <div class="container">
        <form class="mt-5 form-signin" action="/user/edit" method="post">
            <label for="inputName" class="sr-only">이름</label>
            <input type="text" name="name" id="inputName" class="form-control" placeholder="변경하고싶은 이름을 입력해주세요" required autofocus>
            <label for="inputPassword" class="sr-only">비밀번호</label>
            <input class="hidden" type="email" name="email" value="<%=email%>">
            <input type="password" name="password" id="inputPassword" class="form-control mt-3" placeholder="변경하고싶은 비밀번호를 입력해주세요" required>
            <button class="btn btn-lg btn-primary btn-block" type="submit" value="/user/edit">정보 수정하기</button>
        </form>
    </div>
<jsp:include page="/view/components/footer.jsp" flush="false" />
</body>
</html>
