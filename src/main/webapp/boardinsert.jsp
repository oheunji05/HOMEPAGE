<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>2202오은지 게시판</title>
    <%@include file ="boardhead.jsp"%>
</head>

<body>

<%@include file="nav.jsp"%>

<div class="container">
    <h3 style="margin-bottom: 50px; margin-top: 50px; display: flex; justify-content: space-around">글쓰기</h3>
    <form action="boardinsertproc.jsp">
        <div style="display: flex;flex-wrap: wrap;justify-content: center;">
            <input style="width: 60%" type="text" class="form-control mb-3" name="title" placeholder="제목"/>
            <textarea style="width: 60%" class="form-control mb-3" placeholder="내용을 입력하세요" rows="10" name="content"></textarea>

            <input style="width: 60%" type="text" class="form-control mb-3" name="name" placeholder="작성자" value="<%=session.getAttribute("username")%>" readonly/>
        </div>
            <input style="margin-left: 260px; background-color: #ae84ff; width: 60%; height: 40px; border-radius: 10px; color: white; border: 0; outline: 0;" type="submit" value="저장"/>
    </form>
</div>


</body>

</html>
