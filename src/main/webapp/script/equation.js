function getAnswer() {
    // Создаём XMLHttpRequest для разных браузеров
    // Сейчас так уже почти никто так не делает, используют вместо этого
    // библиотеку jquery
    var xmlhttp;
    if (window.XMLHttpRequest) // Firefox / Chrome
    {
        xmlhttp = new XMLHttpRequest();
    }
    else {    // Internet explorer
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }

    // Когда придёт ответ на Ajax-запрос
    xmlhttp.onreadystatechange = function () {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            // Пришёл корректный ответ
            document.getElementById("answer").innerHTML = xmlhttp.responseText;
        }
    };
    var a = document.getElementById("a").value;
    var b = document.getElementById("b").value;
    var c = document.getElementById("c").value;
    // Создаём URL
    var sendlink = "./sqroots.jsp";
    var params = '?a=' + encodeURIComponent(a) + '&b=' + encodeURIComponent(b) + '&c=' + encodeURIComponent(c);
    // Отправляем GET-запрос на сервер
    xmlhttp.open("GET", sendlink + params, true);
    xmlhttp.send();

}