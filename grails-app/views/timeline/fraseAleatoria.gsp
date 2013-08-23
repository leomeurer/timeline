<%--
  Created by IntelliJ IDEA.
  User: Leonardo
  Date: 23/08/13
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
  <title>Minahs frases</title>
</head>
<body>
<g:link action="list" controller="timeline" class="btn btn-primary">Listar</g:link>

<p>${abc.frase}</p>
<p>${abc.autor}</p>
</body>
</html>