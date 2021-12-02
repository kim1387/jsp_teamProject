<%@ page import="cham10jyo.post.dao.PostDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="cham10jyo.post.domain.Post" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.concurrent.atomic.AtomicReference" %>
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
    <title>소통 공지사항</title>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
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
                    <%
                    if(!(auth.equals(AUTH_KEY_NORMAL)) && !(auth.equals(null))){
                        out.println("<li>");
                        out.println("<a href=\"/view/page/board/board_write.jsp\" class=\"nav-link link-dark me-2 mt-5 bg-primary text-white p-3 m-3 text-center\">\n" + "글 작성\n" + "</a>");
                        out.println("</li>");
                    }
                    %>
                </ul>
                <hr>
            </div>
        </div>
        <div class="col mt-4 mr-5">
            <h1>'${param["title"]}' 의 검색내역</h1>
            <form action="/view/page/board/board_notice_search.jsp" method="post">
                <div class="input-group mb-3">
                    <input type="text" name="title" class="form-control" placeholder="찾으실 글 제목을 입력해주세요." aria-label="Recipient's username" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="submit">글 검색하기</button>
                    </div>
                </div>
            </form>
            <table id="notice-table"class="table">
                <thead class="thead-light">
                <tr>
                    <th scope="col">글번호</th>
                    <th scope="col" style="width: 30%;">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                </tr>
                </thead>
                <tbody>
                <%
                    PostDao postDao = new PostDao();
                    ArrayList<Post> posts =  postDao.searchByTitle(request.getParameter("title"));

                    for(Post post : posts){
                        Long id = post.getId();
                        String title = post.getTitle();
                        String userEmail = post.getUserEmail();
                        Date date = post.getCreatedDate();
                        System.out.print(title);
                %>
                    <tr>
                        <th scope="row"><%=id%></th>
                        <td><a href="board_view.jsp?postId=<%=id%>"><%=title%></a></td>
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
<jsp:include page="/view/components/footer.jsp" flush="false" />
</body>
</html>
