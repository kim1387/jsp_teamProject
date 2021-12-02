<%--
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
            <h1>작성 게시글 번호 나 제목</h1>
            <div class="border mb-3">질문란</div>
            <div class="border mb-3">답변란</div>
            <form class="hidden">
                <textarea class="form-control" id="inputQnaWriter" rows="4" cols="50" maxlength="2048" placeholder="내용을 입력해주세요" style="resize: none;"></textarea>
                <button onclick="handletUpdate()" class="btn btn-Success btn-lg active mt-3" role="button" aria-pressed="true">완료하기</button>
            </form>
            <button onclick="handleComment()"  class="btn btn-primary btn-lg active" role="button" aria-pressed="true">답변달기</button>
            <button onclick="handleQnADelete()" class="btn btn-danger btn-lg active" role="button" aria-pressed="true">삭제하기</button>
        </div>
    </div>
</div>
<script src="/view/js/common.js"></script>
</body>
</html>
