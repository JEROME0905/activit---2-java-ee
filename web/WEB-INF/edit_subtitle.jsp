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
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <style type="text/css">
        <%@include file="../public/css/style.css" %>
    </style>
</head>
<body>

<div class="container-fluid" id="bloc-lecture-enregistrement">
    <div class="row">
        <div class="col-lg-1 col-md-1 col-sm-0 col-xs-0"></div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h1 class="panel-title">REPRENDRE LE FICHIER EN COUR DE TRADUCTION</h1>
                </div>
                <div class="panel-body">
                    <form method="post" action="activité_2_java_ee_war_exploded//edit">
                        <label for="monsFichier">Choisissez le fichier a traduire : </label></br>
                        <select name="listesfichierstraduit" id="monsFichier">
                            <option value="password_presentation.srt">password_presentation.srt</option>
                        </select>
                        <input type="submit" id="btn_formulaire"/>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-lg-2 col-md-2 col-sm-0 col-xs-0"></div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h1 class="panel-title">ENREGISTREMENT DE LA TRADUCTION </h1>
                </div>
                <div class="panel-body" id="enregistrement-traduction">

                </div>
            </div>
        </div>
        <div class="col-lg-1 col-md-1 col-sm-0 col-xs-0"></div>
    </div>
</div>
<form method="post">
    <div id="endform">
        <label for="newfile">nom du fichier traduit :</label> <input type="text" name="newfile" id="newfile"/>
        <input type="submit" id="btn_formulaire"/>
    </div>
    <!-- Utilisez flex blox-->
    <table>
        <tbody>
        <c:forEach items="${ subtitles }" var="line" varStatus="status">
            <tr>
                <td><c:out value="${ line }"/></td>
                <td><input type="text" name="line${ status.index }" id="line${ status.index }"/></td>
            </tr>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    </br>
</form>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
</body>
</html>