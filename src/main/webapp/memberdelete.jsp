<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.freeboard.MemberDBManager" %>
<%@ page import="com.mh.freeboard.Member" %>

<%
    String ids[] = request.getParameterValues("id");
    for (int i = 0; i<ids.length ; i++)
        out.println(ids[i]);

    MemberDBManager mdm = new MemberDBManager();
    String result = mdm.dodelete(ids);
    if(result.equals("success"))
        response.sendRedirect("memberselect.jsp");
%>
