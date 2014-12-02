<%@ page import="example.QE" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Решение квадратного уравнения</title>
</head>
<body>
<h1> Квадратное уравнение </h1>

  <%
    String aStr = request.getParameter("a");
    String bStr = request.getParameter("b");
    String cStr = request.getParameter("c");
    if (aStr != null && bStr != null && cStr != null) {
        double a = Double.parseDouble(aStr);
        double b = Double.parseDouble(bStr);
        double c = Double.parseDouble(cStr);
        QE equation = new QE(a, b, c);
%> <%=a%> x<sup>2</sup> + <%=b%> x + <%=c%> = 0<br> <%
        double[] x = equation.solve();
%> Решений: <%=x.length%> <%
    for (int i = 0; i < x.length; ++i) {
%> x<sub><%=(i + 1)%>
</sub> = <%=x%>
<%
    }

  }
%>


<p> Введите коэффициенты </p>
<form action="srq.jsp" method="GET">
  <input type="text" name="a" value="${param.a}">
  x<sup>2</sup> +
  <input type="text" name="b" value="${param.b}">
  x +
  <input type="text" name="c" value="${param.c}">
  = 0

  <br>
  <br>
  <input type="submit" value="Решить!"/>
</form>
</body>
</html>
