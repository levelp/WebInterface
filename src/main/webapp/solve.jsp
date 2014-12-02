<%@ page import="example.Solve" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Boss
  Date: 02.12.14
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Решение квадратного уравнения</title>
</head>
<body>



<h1>Введите параметры квадратного уравнения</h1>
<form action="solve.jsp" method="GET">
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
<h2>Решение:</h2>

<%
  String aStr = request.getParameter("a");
  String bStr = request.getParameter("b");
  String cStr = request.getParameter("c");
  if (aStr != null && bStr != null && cStr != null) {
    double a = Double.parseDouble(aStr);
    double b = Double.parseDouble(bStr);
    double c = Double.parseDouble(cStr);
  Solve ur1 = new Solve(a,b,c);
  double[] x = ur1.solve();
    if (x[0]==0){ %> Решения нет<%}
else {
  for (int i=0; i<x.length;i++) {

  %> x<%=i+1%> = <%=x[i]%>
<%}}}%>
</body>
</html>
