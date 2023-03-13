<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mh.freeboard.BoardManager" %>
<%@ page import="com.mh.freeboard.Board" %>
<%
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String name = request.getParameter("name");

    Board board = new Board();
    board.setTitle(title);
    board.setName(name);
    board.setContent(content);

    BoardManager bm = new BoardManager();
    bm.doinsert(board);
    response.sendRedirect("board.jsp");
%>
