<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Novo</title>
    </head>
    <body>
        <h1>Novo Livro</h1>
        <form action="/insert" method="post">
            <input type="text" name="Titulo">
            <button type="submit">Salvar</button>
        </form>
    </body>
</html>
