<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.freeboard.MemberDBManager" %>
<%@ page import="com.mh.freeboard.Member" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String id = request.getParameter("id");

    out.println("username : " + username);
    out.println("password : " + password);
    out.println("id : " + id);

    MemberDBManager mdm = new MemberDBManager();
    mdm.doupdate(username, password, id);
    response.sendRedirect("memberselect.jsp");
%>