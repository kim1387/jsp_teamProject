<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>소통 글쓰기</title>
    <link rel="stylesheet" href="/view/css/common.css">
    <%@ include file="../../../view/components/header.jsp"%>
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
                            <a href="/view/page/board/board_view_faq.jsp" class="nav-link link-dark me-2 text-center">
                                F A Q
                            </a>
                        </li>
                    </ul>
                    <hr>
                </div>
            </div>
            <div class="col mt-4 mr-5">
                <h1>글 작성하기</h1>
                <form method="post" action="/post/create">
                    <div class="mb-3">
                        <h2><label for="inputTitle" class="form-label">제목</label></h2>
                        <input type="text" class="form-control" id="inputTitle" name="title" aria-describedby="titleHelp" placeholder="제목을 입력해주세요" maxlength="15" required>
                        <input class ="hidden" name="bbsType" value="notice">
                        <input class ="form-control hidden" id="inputEmail" name="userEmail" value="<%=email%>" placeholder="이메일을 입력해주세요" style="display: none">
                    </div>
                    <div class="mb-3">
                        <h2><label for="inputWriter" class="form-label">내용</label></h2>
                        <textarea class="form-control" id="inputWriter" rows="4" cols="50" maxlength="2048" placeholder="내용을 입력해주세요" style="resize: none;" name="content" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary" value="/post/create">글 작성하기</button>
                </form>
            </div>
        </div>
    </div>
<script src="/view/js/common.js"></script>
    <jsp:include page="/view/components/footer.jsp" flush="false" />

</body>
</html>
