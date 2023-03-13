<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "com.mh.freeboard.BoardManager"%>
<%@ page import = "com.mh.freeboard.Board"%>
<%@ page import = "java.util.List"%>

<%
    //주소 줄에 있는 idx값 가져오기
    String idx = request.getParameter("idx");
    //주소 줄의 idx값을 가져왔을 때 그 값이 null이면 idx 주소줄에 없다는 뜻
    if(idx == null){
        idx = "1";
    }
    BoardManager bm = new BoardManager();
    Board board = bm.doselectrow(Integer.parseInt(idx));
%>
<html>

<head>
    <title>2202오은지 게시판</title>
    <%@include file="boardhead.jsp"%>
</head>

<body>

    <%@include file="nav.jsp"%>

    <div class="container" style="margin-top: 20px; display: flex;justify-content: space-evenly;flex-direction: column;align-items: center;">
        <h1 style="margin-bottom: 50px; margin-top: 50px; display: flex; justify-content: space-around">글</h1>

        <div class="row" style="width: 600px">
            <div class="col">
                <table class="table">
                    <tr class="table-primary">
                        <th class="display-6"><%=board.getTitle()%></th>
                    </tr>
                    <tr class="table-primary">
                        <th>작성날짜 : <%=board.getWdate()%></th>
                    </tr>
                    <tr>
                        <td class="p-2" style="height: 20rem;"><%=board.getContent()%></td>
                    </tr>
                    <tr class="table-primary">
                        <td>작성자 : <%=board.getName()%></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="mt-3">
            <a class="btn btn-primary" href="boardupdate.jsp?idx=<%=board.getIdx()%>">글수정</a>
            <a class="btn btn-primary" href="boarddeleteproc.jsp?idx=<%=board.getIdx()%>">글삭제</a>
        </div>

    </div>



</body>

</html>
