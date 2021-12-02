<%--
  Created by IntelliJ IDEA.
  User: dkfud
  Date: 2021-12-02
  Time: 오후 1:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>허밍랜드 - 자주 묻는 질문!</title>
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
                        <a href="/view/page/board/board_view_faq.jsp" class="nav-link link-dark me-2 text-center">
                            Q & A
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
            <h1>FAQ 게시판</h1>
            <table class="table">
                <thead class="thead-light">
                <tr>
                    <th scope="col" style="width: 30%;">질문 사항</th>
                    <th scope="col">답변</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        허밍랜드 내에 의무실이 있나요?
                    </td>
                    <td>
                        허밍랜드 정문 입장 후 오른쪽 손님서비스센터 건물 내 정문의무실과  T 익스프레스 앞 알파인의무실이 있으며, 간단한 상비약이 구비되어 있습니다.
                    </td>
                </tr>
                <tr>
                    <td>
                        제가 키우는 동물을 기증하고 싶습니다.
                    </td>
                    <td>
                        허밍랜드에서는 외부 동물들을 기증 받거나, 분양하지 않습니다.
                    </td>
                </tr>
                <tr>
                    <td>
                        주차는 어떻게 하나요?
                    </td>
                    <td>
                        허밍스 호텔 숙소 앞에 마련된 별도의 주차장에 주차를 하실 수 있으며, 파크 이동 시 시간대별 셔틀 버스를 이용하시거나 차량으로 이동하실 수 있습니다.
                    </td>
                </tr>
                <tr>
                    <td>
                        허밍랜드 자체에서 운행하는 셔틀버스가 있나요?
                    </td>
                    <td>
                        허밍랜드 리조트 단지 내 주차장간 이동 시에만 셔틀버스 이용이 가능합니다. 허밍버랜드를 찾아 오실 때는 관광버스 회사에서 자체적으로 운영하는 버스 또는 대중교통편을 이용해주시기 바랍니다.
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<jsp:include page="/view/components/footer.jsp" flush="false" />

</body>
</html>
