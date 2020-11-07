<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <% String msj = request.getParameter("link");

%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Detalle de Pokemon</title>
    <link href="<c:url value="/PUBLIC/css/pokemon.css"/>" rel="stylesheet">
    <link href="<c:url value="https://netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<input type="hidden" id="idpokemon" value="${idpokemon}"/>
  <center>
  <div class="container">
   
  </div>
   </center>
<script src="<c:url value="/PUBLIC/js/detalle.js"/>"></script>

</body>

</html>