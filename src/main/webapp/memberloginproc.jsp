<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.freeboard.MemberDBManager" %>

<%

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    out.println("username = " + username);
    out.println("password = " + password);

    MemberDBManager mdm = new MemberDBManager();
    boolean ret = mdm.loginchk(username,password);

    if(ret){
        System.out.println(username);
        session.setAttribute("username", username);
        response.sendRedirect("index.jsp");
    }
    else {
        out.println("<script>");
        out.println("alert('아이디 비밀번호를 다시 확인하세요');");
        out.println("location.href='index.jsp';");
        out.println("</script>");
    }

%>