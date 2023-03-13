<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.freeboard.MemberDBManager" %>
<%@ page import="com.mh.freeboard.Member" %>

<%@ page import="java.util.List" %>

<%
    MemberDBManager mdm = new MemberDBManager();
    List<Member> list = mdm.doselect();
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
<%@ include file="nav.jsp" %>
<form action="memberdelete.jsp" style="display: flex;justify-content: center;">
    <div class="main" style="margin-top: 150px; display: flex;align-items: center;flex-direction: column; background-color: #f9f7ff; width: 600px; height: 100%; border-radius: 20px; display: flex;flex-direction: column;align-items: center;justify-content: center;">
        <h3 style="margin-bottom: 50px; margin-top: 20px">회원목록</h3>
        <table class="table" style="width: 500px;">
            <tr style="background-color: #d7c2ff;">
                <th>#</th><th>ID</th><th>USERNAME</th><th>PASSWORD</th>
            </tr>
            <% for (Member member : list){ %>
            <tr>
                <td><input type="checkbox" name="id" value="<%=member.getId() %>"/></td>
                <td><%=member.getId() %></td>
                <td><a href="memberupdate.jsp?id=<%=member.getId()%>"><%=member.getUsername() %></a></td>
                <td><%=member.getPassword() %></td>
            </tr>
            <% }%>
        </table>
        <br/>
        <input style="margin-bottom: 20px;background-color: #ae84ff; width: 500px; height: 40px; border-radius: 10px; color: white; border: 0; outline: 0;" type="submit" value="삭제"/>
    </div>
</form>
</body>
</html>