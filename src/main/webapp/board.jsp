<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-05-10
  Time: 오후 3:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "com.mh.freeboard.BoardManager"%>
<%@ page import = "com.mh.freeboard.Board"%>
<%@ page import = "java.util.List"%>

<%
    String pagenum = request.getParameter("pagenum");
    if(pagenum == null){
        pagenum = "1";
    }
    BoardManager bm = new BoardManager();
    List<Board> list = bm.doselect(Integer.parseInt(pagenum));
    int pagecnt = bm.getPageCnt();
    //out.println("pagecnt = " + pagecnt);
%>

<html>

<head>
    <title>2202오은지 게시판</title>
    <%@include file="boardhead.jsp"%>
</head>

<body>

    <%@include file="nav.jsp"%>

    <div class="container" style="margin-top: 100px; padding-left:5px; padding-right:5px; display: flex;align-items: center;flex-direction: column; background-color: #f9f7ff; width: 700px; height: 50%; border-radius: 20px; display: flex;flex-direction: column;align-items: center;justify-content: center;">
        <h3 style="margin-bottom: 50px; margin-top: 50px; display: flex; justify-content: space-around">글목록</h3>
        <table class="table table-hover">
            <thead>
            <tr class="table-primary" style="">
                <th scope="col">순번</th>
                <th scope="col">타이틀</th>
                <th scope="col">작성자</th>
                <th scope="col">작성일자</th>
                <th scope="col">조회수</th>
            </tr>
            </thead>
            <tbody>
            <% for (Board board : list) { %>
            <tr>
                <th scope="row"><%=board.getIdx()%></th>
                <td>
                    <a href="boardview.jsp?idx=<%=board.getIdx()%>">
                        <%=board.getTitle()%>
                    </a>
                </td>
                <td><%=board.getName()%></td>
                <td><%=board.getWdate()%></td>
                <td><%=board.getCount()%></td>
            </tr>
            <% } %>
            </tbody>
        </table>

        <a style="background-color: #ae84ff; width: 400px; height: 40px; border-radius: 10px; color: white; border: 0; outline: 0;" class="btn btn-primary" href="boardinsert.jsp">글쓰기</a>


    </div>

    <div>
        <nav aria-label="Page navigation example" style="margin-top: 350px">
            <ul class="pagination justify-content-center">
                <% if(Integer.parseInt(pagenum) == 1) {%>
                    <li class="page-item disabled">
                <% } else {%>
                    <li class=""page-item>
                <% } %>
                    <a class="page-link"
                       href="?pagenum=<%=Integer.parseInt(pagenum)-1%>">Previous
                    </a>
                </li>
                <% for(int i = 1; i < pagecnt + 1; i++){ %>
                    <li class="page-item <%=(Integer.parseInt(pagenum)==i)?"active":""%>>">
                        <a class="page-link" href="?pagenum=<%=i%>"><%=i%></a>
                    </li>
                <% }%>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
        </nav>
    </div>

</body>

</html>
