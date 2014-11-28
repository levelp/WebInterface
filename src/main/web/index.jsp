<%@ page import="example.MyClass" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Начальная страница</title>
</head>
<body>
<h1>Начальная страница</h1>

<%
    MyClass myClass = new MyClass();
%>

<table border="1">
    <%
        for (int i = 1; i < 10; i++) {
    %>
    <tr>
        <%
            for (int j = 1; j < 10; j++) {
        %>
        <td><%=myClass.mul(i, j)%>
        </td>
        <% } %>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
