<%@ page import="cham10jyo.post.domain.Post" %>
<%@ page import="cham10jyo.post.dao.PostDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: kpu
  Date: 2021/11/28
  Time: 5:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>소통 큐엔에이</title>
    <%@ include file="../../components/header.jsp"%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-2">
            <%@include file="../../components/sidemenu.jsp"%>
        </div>
        <div class="col mt-4 mr-5">
            <h1>Q&A 게시판</h1>
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
                <%
                    PostDao postDao = new PostDao();

                    ArrayList<Post> posts =  postDao.getQNAPost();

                    for(Post post : posts){
                        Long id = post.getId();
                        String title = post.getTitle();
                        String userEmail = post.getUserEmail();
                        Date date = post.getCreatedDate();

                %>
                <tr>
                    <th scope="row"><%=id%></th>
                    <td><a href="#"><%=title%></a></td>
                    <td><%=userEmail%></td>
                    <td><%=date%></td>
                </tr>
                <%
                    };
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
<%@ include file="../../components/footer.jsp"%>
</html>
