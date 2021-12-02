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
            <div class="d-flex flex-column flex-shrink-0 bg-white">
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item">
                        <a href="/view/page/board/board_notice.jsp" class="nav-link link-dark me-2 text-center" >
                            공지사항
                        </a>
                    </li>
                    <li>
                        <a href="/view/page/board/board_qna.jsp" class="nav-link link-dark me-2 text-center">
                            Q & A
                        </a>
                    </li>
                    <%
                        if(!(auth.equals(AUTH_KEY_NORMAL)) && !(auth.equals(null))){
                            out.println("<li>");
                            out.println(auth);
                            out.println("<a href=\"/view/page/board/board_write.jsp\" class=\"nav-link link-dark me-2 mt-5 bg-primary text-white p-3 m-3 text-center\">\n" + "글 작성\n" + "</a>");
                            out.println("</li>");
                        }
                    %>
                </ul>
                <hr>
            </div>
        </div>
        <div class="col mt-4 mr-5">

            <h1 class="text-primary" name="title"><%=title%></h1>

            <div class="mb-3 p-3 bg-light border rounded-3"><%=content%></div>

            <form id="editForm"class="hidden" action="/post/modify" method="post">
                <input name="id" class="hidden" value="<%=id%>">
                <div class="input-group input-group-lg mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="inputGroup-sizing-lg">제목</span>
                    </div>
                    <input type="text" class="form-control" name="title" value="<%=title%>" aria-label="Large" aria-describedby="inputGroup-sizing-sm">
                </div>
                <textarea class="form-control" id="inputQnaWriter" name="content" rows="4" cols="50" maxlength="2048" placeholder="수정할 내용을 입력해주세요" style="resize: none;"></textarea>
                <button class="btn btn-Success btn-lg active mt-3" type="submit" value="/post/modify" aria-pressed="true">완료하기</button>
            </form>
            <%
                if(userEmail.equals(email))
                   out.println("<button onclick=\"handleEditBbs()\" class=\"mb-3 btn btn-primary btn-lg active\" role=\"button\">수정하기</button>");
            %>
            <form action="/post/delete" method="post">
                <input class="hidden" name="id" value="<%=id%>">
                <button type="submit" class="btn btn-danger btn-lg active" value="/post/delete">삭제하기</button>
            </form>
        </div>
    </div>
</div>
<script>
    function handleEditBbs(){
        const editForm = document.querySelector("#editForm");
        const HIDDENCLASS_KEY = "hidden";
        editForm.classList.remove(HIDDENCLASS_KEY);
    }
</script>
<script src="/view/js/common.js"></script>
</body>
</html>
