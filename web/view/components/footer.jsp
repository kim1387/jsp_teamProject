<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="util" tagdir="/WEB-INF/tags"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date" %>
<%
    Date nowTime = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy.MM.dd ");
%>
<html>
<head>
    <title>footer</title>
</head>
<body>
<footer>
    <util:line/>
    <div class="container">
        <footer class="py-3 my-4">
            <h3><%= sf.format(nowTime) %></h3>
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="/view/page/main.jsp" class="nav-link px-2 text-muted">메인화면</a></li>
                <li class="nav-item"><a href="/view/page/entertainment.jsp" class="nav-link px-2 text-muted">즐길거리</a></li>
                <li class="nav-item"><a href="/view/page/guide.jsp" class="nav-link px-2 text-muted">이용가이드</a></li>
                <li class="nav-item"><a href="/view/page/board/board_notice.jsp" class="nav-link px-2 text-muted">소통</a></li>
                <li class="nav-item"><a href="/view/page/login.jsp" class="nav-link px-2 text-muted">로그인</a></li>
            </ul>
            <p class="text-center text-muted">© 2021 hummingland Company, Inc</p>
        </footer>
    </div>
    <util:line/>
</footer>
</body>
</html>
