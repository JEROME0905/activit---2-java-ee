<%--
  Created by IntelliJ IDEA.
  User: Le Bail Jérôme
  Date: 30/03/2019
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>Editer les sous-titres</title>
    <style type="text/css">
        <%@include file="../public/css/style.css" %>
    </style>
</head>
<body>
<form method="post">
    <table>
        <c:forEach items="${ subtitles }" var="line" varStatus="status">
            <tr>
                <td><c:out value="${ line }"/></td>
                <td><input type="text" name="line${ status.index }" id="line${ status.index }" size="35"/></td>
            </tr>
        </c:forEach>
    </table>
    <input type="submit" id="btn_formulaire"/>
</form>
</body>
</html>