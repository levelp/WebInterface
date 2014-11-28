<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Решение квадратного уравнения</title>
    <script type="text/javascript" src="./script/equation.js">
    </script>
    <link rel="stylesheet" href="./style/equation.css"/>
</head>
<body>
<h1>Квадратное уравнение</h1>

<h2>Форма для ввода коэффициентов</h2>
<h3>Привет, группа! Давайте писать свой проект!</h3>

<label>
    <input type="text" size="2" id="a">
    x<sup>2</sup> +
</label>
<label>
    <input type="text" size="2" id="b"/>
    x +
</label>
<label>
    <input type="text" size="2" id="c"/>
    = 0
</label>
<br>
<br>
<input type="submit" value="Решить!" name="Solve" onclick="getAnswer()"/>

<div id="answer"></div>
</body>
</html>
