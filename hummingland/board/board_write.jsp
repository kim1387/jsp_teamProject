<%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>소통 글쓰기</title>
    <%@ include file="../header.jsp"%>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-2">
                <%@ include file="../sidemenu.jsp"%>
            </div>
            <div class="col mt-4 mr-5">
                <h1>글 작성하기</h1>
                <form>
                    <div class="mb-3">
                        <h2>게시판 선택</h2>
                        <select class="form-select" id="boardType" aria-label="Default select example">
                            <option selected>게시판을 선택해주세요.</option>
                            <option value="공지사항">공지사항</option>
                            <option value="QNA">Q&A</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <h2><label for="inputTitle" class="form-label">제목</label></h2>
                        <input type="text" class="form-control" id="inputTitle" aria-describedby="titleHelp" maxlength="20">
                        <div id="titleHelp" class="form-text">제목을 입력해주세요.(글자 수 제한은 20글자입니다.)</div>
                    </div>
                    <div class="mb-3">
                        <h2><label for="inputWriter" class="form-label">내용</label></h2>
                        <textarea class="form-control" id="inputWriter" rows="4" cols="50" maxlength="2048" placeholder="내용을 입력해주세요" style="resize: none;"></textarea>
                    </div>
                    <button onclick="handleWrite()" type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
<script src="../js/common.js"></script>
</body>
<%@ include file="../footer.jsp"%>
</html>
