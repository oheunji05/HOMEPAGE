<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import = "com.mh.freeboard.BoardManager"%>
<%@ page import = "com.mh.freeboard.Board"%>

<%
    BoardManager bm = new BoardManager();
    Board board = bm.doselectrow(Integer.parseInt(request.getParameter("idx")));
%>
<html>

<head>
    <title>2202오은지 게시판</title>
    <%@include file ="boardhead.jsp"%>
</head>

<body>

<%@include file="nav.jsp"%>

<div class="container" style="display: flex;flex-direction: column;align-items: center;">
    <h1 style="margin-bottom: 50px; margin-top: 50px">글수정</h1>
    <form action="boardupdateproc.jsp" style="width: 600px">
        <input type="hidden" name="idx" value="<%=board.getIdx()%>">
        제목 <input type="text" class="form-control mb-3" name="title" placeholder="title" value="<%=board.getTitle()%>"/>
        <textarea class="form-control mb-3" placeholder="내용을 입력하세요" rows="10" name="content"><%=board.getContent()%></textarea>
        작성자 <input type="text" class="form-control mb-3" name="name" placeholder="name" value="<%=board.getName()%>"/>

        <input class="btn btn-primary" type="submit" value="저장"/>
    </form>
</div>


</body>

</html>
