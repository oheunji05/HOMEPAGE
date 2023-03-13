<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-sm navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="/index.jsp">HOMEPAGE</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/board.jsp">BOARD</a>
                </li>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/memberinsert.jsp">REGISTER</a>--%>
<%--                </li>--%>
                <li class="nav-item">
                    <a class="nav-link" href="/memberselect.jsp">MEMBER LIST</a>
                </li>
            </ul>
            <div class="d-flex">
                <div>
                    <%
                        String username = (String) session.getAttribute("username");
                        if(username == null){
                    %>
                    <form action="memberloginproc.jsp">
                        <table>
                            <tr>
                                <td><input type="text" name="username" placeholder="ID"/></td>
                                <td rowspan="2"><input type="submit" value="LOGIN" style="height: 61px; background-color: #d7c2ff; border: 0; outline: 0"/></td>
                            </tr>
                            <tr>
                                <td><input type="text" name="password" placeholder="PASSWORD"/></td>
                            </tr>
                        </table>
                    </form>

                    <div class="logout">
                        <%
                        }else{
//                            out.println("<br>");
                            out.println("welcome " + username + "   ");
                        %>
                        <a href="memberlogout.jsp" style="color: white">LOGOUT</a>
                        <%
                            }
                        %>
                    </div>

                </div>
            </div>
        </div>
    </div>
</nav>