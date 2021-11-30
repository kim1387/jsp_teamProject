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
    <%@ include file="../../../view/components/header.jsp"%>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-2">
                <%@ include file="../../../view/components/sidemenu.jsp"%>
            </div>
            <div class="col mt-4 mr-5">
                <h1>글 작성하기</h1>
                <form method="post" action="/post/create">
                    <div class="mb-3">
                        <h2>게시판 선택</h2>
                        <select class="form-select" id="boardType" aria-label="Default select example" name="bbsType">
                            <option selected>게시판을 선택해주세요.</option>
                            <option value="notice">공지사항</option>
                            <option value="qna">Q&A</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <h2><label for="inputTitle" class="form-label">제목</label></h2>
                        <input type="text" class="form-control" id="inputTitle" name="title" aria-describedby="titleHelp" placeholder="제목을 입력해주세요" maxlength="20">

                        <input class ="form-control hidden" id="inputEmail" name="userEmail" value="<%=email%>" placeholder="이메일을 입력해주세요" style="display: none">
                    </div>
                    <div class="mb-3">
                        <h2><label for="inputWriter" class="form-label">내용</label></h2>
                        <textarea class="form-control" id="inputWriter" rows="4" cols="50" maxlength="2048" placeholder="내용을 입력해주세요" style="resize: none;" name="content"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary" value="/post/create">Submit</button>
                </form>
            </div>
        </div>
    </div>
<script src="/view/js/common.js"></script>
</body>
<%@ include file="../../../view/components/footer.jsp"%>
</html>
