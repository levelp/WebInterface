<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Решение квадратного уравнения</title>
</head>
<body>
<form name="Form1"
      method="post"
      action="http://localhost:8080/servlets/servlet/PostParametersServlet">


<h1>Квадратное уравнение</h1>
<h2>a*x^2+b*x+c=0</h2>

<table>
    <tr>
        <td><B>a</td>
        <td><input type="text" name="a".size="5" value=""></td>
        <td><B>b</td>
        <td><input type="text" name="b".size="5" value=""></td>
        <td><B>c</td>
        <td><input type="text" name="c".size="5" value=""></td>
    </tr>
</table>
<input type="submit" value="get answer">
</form>
</body>
</html>
