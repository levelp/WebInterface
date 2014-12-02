<%@ page import="example.QuadraticEquation" %>
<%@ page import="example.exceptions.AnyXException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Решение квадратного уравнения</title>
</head>
<body>
<h1>Квадратное уравнение</h1>

<%
    try {
        String aStr = request.getParameter("a");
        String bStr = request.getParameter("b");
        String cStr = request.getParameter("c");
        if (aStr != null && bStr != null && cStr != null) {
            double a = Double.parseDouble(aStr);
            double b = Double.parseDouble(bStr);
            double c = Double.parseDouble(cStr);
            QuadraticEquation equation = new QuadraticEquation(a, b, c);
%> <%=a%> x<sup>2</sup> + <%=b%> x + <%=c%> = 0<br> <%
    try {
        double[] x = equation.solve();
%> Решений: <%=x.length%> <%
    for (int i = 0; i < x.length; ++i) {
%> x<sub><%=(i + 1)%>
</sub> = <%=x%>
<%
    }
} catch (AnyXException e) {
%> <%=e.getMessage()%> <%
        }
    }
} catch (NumberFormatException nfe) {
%>  Введите число <%
    }
%>

<h2>Форма для ввода коэффициентов</h2>

<form action="sqroots.jsp" method="GET">
    <label>
        <input type="text" name="a" value="${param.a}">
        x<sup>2</sup> +
    </label>
    <label>
        <input type="text" name="b" value="${param.b}"/>
    </label>
    x +
    <label>
        <input type="text" name="c" value="${param.c}"/>
    </label>
    = 0
    <br>
    <br>
    <input type="submit" value="Решить!"/>
</form>
</body>
</html>
