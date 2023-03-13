<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.freeboard.MemberDBManager" %>
<%@ page import="com.mh.freeboard.Member" %>
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

<div class="main" style=" margin-top: 50px; display: flex;align-items: center;flex-direction: column;">
    <div style="margin-top: 100px; background-color: #f9f7ff; width: 600px; height: 400px; border-radius: 20px; display: flex;flex-direction: column;align-items: center;justify-content: center;">
        <h3 style="margin-bottom: 50px;">회원가입</h3>
        <form action="memberinsertproc.jsp">
            <input type="text" name="username" placeholder="username" style="width: 400px; height: 40px; border-radius: 10px; border: 0; outline: 0; background-color: #eee7ff; margin-bottom: 10px" /> <br>
            <input type="text" name="password" placeholder="password" style="width: 400px; height: 40px; border-radius: 10px; border: 0; outline: 0; background-color: #eee7ff; margin-bottom: 10px"/> <br>
            <br/>
            <input style="background-color: #ae84ff; width: 400px; height: 40px; border-radius: 10px; color: white; border: 0; outline: 0;"type="submit" value="저장" />
        </form>
    </div>

</div>

</body>
</html>
