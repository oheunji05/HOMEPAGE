<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.freeboard.BoardManager" %>
<%@ page import="com.mh.freeboard.Board" %>
<%
    String idx = request.getParameter("idx");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String name = request.getParameter("name");

    BoardManager bm = new BoardManager();
    bm.doupdate(title, content, name, Integer.parseInt(idx));

    response.sendRedirect("board.jsp");
%>
