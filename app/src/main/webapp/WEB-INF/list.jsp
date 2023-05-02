<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Livros</title>
    </head>
    <body>
        <h1>Alguns Livros</h1>
        <c:forEach var="item" items="${livros}">
            ${item.titulo} <br />
        </c:forEach>
    </body>
</html>
