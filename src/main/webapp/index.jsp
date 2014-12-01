<%@ page import="example.MyClass" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Квадратное уравнение</title>
</head>
<body>
<h1>Коэффициенты квадратного уравнения</h1>

<%
    MyClass myClass = new MyClass();
%>

<input id = "a" type="number" name="a" value="${param.a}">*x<sup>2</sup>
+<input id = "b" type="number" name="b" value="${param.b}">*x
+<input id = "c" type="number" name="c" value="${param.c}">=0
<%
    String stringA =
    int valueA = a;
%>
<%
    int valueB = 6;
%>
<div></div>

<input id = "button" type="button" content="submit">

<%=myClass.mul(valueA, valueB)%>

<div></div>

String aStr = request.getParameter("a");
String bStr = request.getParameter("b");
String cStr = request.getParameter("c");
if (aStr != null && bStr != null && cStr != null) {
double a = Double.parseDouble(aStr);
double b = Double.parseDouble(bStr);
double c = Double.parseDouble(cStr);


Дважды два: ${2 * 2}

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
