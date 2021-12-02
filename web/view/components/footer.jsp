<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="util" tagdir="/WEB-INF/tags"%>

<html>
<head>
    <title>footer</title>
</head>
<body>
<jsp:useBean id="nowTime" class="java.util.Date" />
<footer>
    <div class="container">
        <util:line/>
        <footer class="py-3 my-4">

            <p class="text-center"><fmt:formatDate value="${nowTime}" type="both" dateStyle="full" timeStyle="full"/></p>
            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="/view/page/main.jsp" class="nav-link px-2 text-muted">메인화면</a></li>
                <li class="nav-item"><a href="/view/page/entertainment.jsp" class="nav-link px-2 text-muted">즐길거리</a></li>
                <li class="nav-item"><a href="/view/page/guide.jsp" class="nav-link px-2 text-muted">이용가이드</a></li>
                <li class="nav-item"><a href="/view/page/board/board_notice.jsp" class="nav-link px-2 text-muted">소통</a></li>
                <li class="nav-item"><a href="/view/page/login.jsp" class="nav-link px-2 text-muted">로그인</a></li>
            </ul>
            <p class="text-center text-muted">© 2021 hummingland Company, Inc</p>
        </footer>
        <util:line/>
    </div>

</footer>
</body>
</html>
