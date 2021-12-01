<%@ page import="cham10jyo.post.dao.PostDao" %>
<%@ page import="cham10jyo.post.domain.Post" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 7:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>소통 게시판</title>
    <%@ include file="/view/components/header.jsp"%>
    <link href="/view/css/common.css" rel="stylesheet">
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    Long postid = Long.valueOf(request.getParameter("postId"));
    PostDao postDao = new PostDao();
    Post post = postDao.getOnePost(postid);
    Long id = post.getId();
    String title = post.getTitle();
    String userEmail = post.getUserEmail();
    Date date = post.getCreatedDate();
    String content = post.getContent();
%>
<div class="container">
    <div class="row">
        <div class="col-2">
            <%@ include file="../../../view/components/sidemenu.jsp"%>
        </div>
        <div class="col mt-4 mr-5">
            <h1 name="title"><%=title%></h1>

            <div class="border mb-3"><%=content%></div>
            <form class="hidden">
                <textarea class="form-control" id="inputQnaWriter" rows="4" cols="50" maxlength="2048" placeholder="내용을 입력해주세요" style="resize: none;"></textarea>
                <button onclick="handletUpdate()" class="btn btn-Success btn-lg active mt-3" role="button" aria-pressed="true">완료하기</button>
            </form>
            <button class="btn btn-primary btn-lg active" role="button" aria-pressed="true">수정하기</button>
            <button onclick="handleDelete()" class="btn btn-danger btn-lg active" role="button" aria-pressed="true">삭제하기</button>
        </div>
    </div>
</div>
<script src="/view/js/common.js"></script>
</body>
</html>
