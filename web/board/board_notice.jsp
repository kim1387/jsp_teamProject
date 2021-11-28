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
    <title>소통 공지사항</title>
    <%@ include file="../header.jsp"%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-2">
            <%@ include file="../sidemenu.jsp"%>
        </div>
        <div class="col mt-4 mr-5">
            <h1>공지사항 게시판</h1>
            <table class="table">
                <thead class="thead-light">
                <tr>
                    <th scope="col">글번호</th>
                    <th scope="col" style="width: 50%;">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td><a href="board_view.jsp">제목입니다.</a></td>
                    <td>Otto</td>
                    <td>111</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td><a href="board_view.jsp">제목입니다.</a></td>
                    <td>Otto</td>
                    <td>111</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td><a href="board_view.jsp">제목입니다.</a></td>
                    <td>Otto</td>
                    <td>111</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
<%@ include file="../footer.jsp"%>
</html>
