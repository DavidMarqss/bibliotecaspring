<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novo Genero</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Novo Genero</h1>
        <a href="/genero/list" class="btn btn-primary">Voltar</a>
        <form action="/genero/insert" method="post">
            <div class=form-group>
                <label for="nome">Nome</label>
                <input type="text" class="form-control" name="nome">
            </div>
            <br />
            <button type="submit" class="btn btn-success">Salvar</button>
        </form>
    </div>

</body>
</html>