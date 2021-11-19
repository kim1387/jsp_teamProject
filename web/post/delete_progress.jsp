<%@ page import="java.io.PrintWriter" %>
<%@ page import="cham10jyo.post.domain.Post" %>
<%@ page import="cham10jyo.post.dao.PostDao" %><%--
  Created by IntelliJ IDEA.
  User: GHKIM
  Date: 2021-11-19
  Time: 오후 5:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cham10jyo</title>
</head>
<body>

    <%
        request.setCharacterEncoding("UTF-8");

        /**
         * 세션 검사
         */
        String userID = null;
        if (session.getAttribute("userID") != null) {
            userID = (String) session.getAttribute("userID");
        }
        if (userID == null) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인을 하세요.')");
            script.println("location.href = 'login.jsp'");
            script.println("</script>");
        }

        Integer postID = 0;
        if (request.getParameter("postID") != null) {
            postID = Integer.parseInt(request.getParameter("postID"));
        }
        if (postID == 0) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('유효하지 않은 글입니다.')");
            script.println("location.href = 'bbs.jsp'");
            script.println("</script>");
        }

    %>
</body>
</html>
