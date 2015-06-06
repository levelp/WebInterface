function getAnswer() {
    var xmlhttp;
    var sendlink = "/sqroots.jsp";
    if (window.XMLHttpRequest)
    {
        xmlhttp=new XMLHttpRequest();
    }
    else
    {
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }

    xmlhttp.onreadystatechange=function()
    {
        if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
            document.getElementById("answer").innerHTML = xmlhttp.responseText;
        }
    }
    var a = document.getElementById("a").value;
    var b = document.getElementById("b").value;
    var c = document.getElementById("c").value;
    var params = '?a=' + encodeURIComponent(a) + '&b=' + encodeURIComponent(b) + '&c=' + encodeURIComponent(c);
    xmlhttp.open("GET", sendlink + params, true);
    xmlhttp.send();

}