<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Livros</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="icon" href="../icons/livros.png" type="image/x-icon">
    </head>
    <body>
        <div class="container">
            <h1>Alguns Livros</h1>
            <a href="/livro/insert" class="btn btn-primary">Novo Livro</a>
            <a href="/" class="btn btn-success">Home</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Titulo</th>
                    <th>Isbn</th>
                    <th>Genero</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="${livros}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.isbn}</td>
                        <td>${item.genero.nome}</td>
                       
                        <td>
                            <a href="/livro/update?id=${item.id}" class="btn btn-warning">Editar</a>
                            <a href="/livro/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
