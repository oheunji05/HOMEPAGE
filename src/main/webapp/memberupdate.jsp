<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.freeboard.MemberDBManager" %>
<%@ page import="com.mh.freeboard.Member" %>

<%
    String id = request.getParameter("id");
    MemberDBManager mdm = new MemberDBManager();
    Member member = mdm.doselectone(id);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>2202오은지 웹프로그래밍 수행평가</title>
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans:400" rel="stylesheet">
    <link href="./mystyle.css" rel="stylesheet">

</head>
<body>
<%@include file = "nav.jsp" %>
<div class="main">
    <h1>회원수정 페이지</h1>
    <form action="memberupdateproc.jsp">
        <input type="hidden" name="id" value="<%=id%>" />
        username<br>
        <input type="text" name="username" value="<%=member.getUsername()%>" /><br>
        password<br>
        <input type="text" name="password" value="<%=member.getPassword()%>" /><br>
        <br/>
        <input type="submit" value="수정"/>
    </form>
</div>
</body>
</html>