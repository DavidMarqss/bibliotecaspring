<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Delete</title>
    </head>
    <body>
        <h1>Delete</h1>
        <h1>Deseja remover o livro "${livro.titulo}"?</h1>
        <form action="/delete" method="post">
            <input type="hidden" name="id" value="${livro.id}"/>
            <button type="submit">Excluir</button>
        </form>
    </body>
</html>