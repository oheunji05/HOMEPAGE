<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.freeboard.MemberDBManager" %>
<%@ page import="com.mh.freeboard.Member" %>

<%

    String u = request.getParameter("username");
    String p = request.getParameter("password");

    MemberDBManager mdm = new MemberDBManager();
    mdm.doInsert(u,p);

    out.println("insert 했음");

    response.sendRedirect("memberselect.jsp");
%>
