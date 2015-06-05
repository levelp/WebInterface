<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Решение квадратного уравнения</title>
    <script type="text/javascript" src="./script/equation.js">
    </script>
    <link rel="stylesheet" href="./style/equation.css" />
</head>
<body>
<h1>Квадратное уравнение</h1>

<h2>Форма для ввода коэффициентов</h2>

    <label>
        <input type="text" size="2" id="a" >
        x<sup>2</sup> +
    </label>
    <label>
        <input type="text" size="2" id="b" />
    </label>
    x +
    <label>
        <input type="text" size="2" id="c" />
    </label>
    = 0
    <br>
    <br>
    <input type="submit" value="Решить!" name="Solve" onclick="getAnswer()"/>

<div id="answer"></div>
</body>
</html>
