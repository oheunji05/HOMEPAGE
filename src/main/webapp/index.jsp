<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-05-10
  Time: 오후 2:52
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>2202오은지 웹프로그래밍 수행평가</title>
    <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans:400" rel="stylesheet">
    <link href="./mystyle.css" rel="stylesheet">
    <%@include file ="boardhead.jsp"%>
</head>

<body>

    <%@include file="nav.jsp"%>

<%--    <div class="container" style="margin-top: 20px; display: flex;flex-direction: column;align-items: center;">--%>
<%--        <img style="width: 1500px; height: 800px;" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MDFfODAg%2FMDAxNjE3MjM0ODcyMzA2.JHm9JHwVD2aE2gHXT0aJxQ2kPU0bG7fH0qOU1RPMbf4g.UM-W_jXiWeS0l4a38TVPKrQ-YMLVJUFwrrpflb65Dwsg.JPEG.mosack%2F%25B2%25C9%25B0%25B0%25C0%25BA%25BB%25E7%25B6%25F7_%25B3%25BB%25BB%25EE%25C0%25B8%25B7%25CE%25B5%25E9%25BE%25EE%25BF%25CD_%25B9%25E9%25B9%25DF%25C0%25CC%25B5%25C6%25B3%25D7_%25B1%25D7%25B3%25C9%25BE%25B2%25B8%25E9%25B5%25C8%25B4%25D9_%25B8%25B6%25C4%25C9%25C5%25CD%25C0%25C7%25C7%25D1%25B8%25B6%25B5%25F0.jpg&type=sc960_832"/>--%>
<%--        <div style="background-color: #6f42c1">--%>
<%--            <a href="memberinsert.jsp">회원가입을 먼저 하세요</a>--%>
<%--        </div>--%>
<%--    </div>--%>

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
