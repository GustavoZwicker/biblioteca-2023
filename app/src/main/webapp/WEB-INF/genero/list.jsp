<%@ page language="java" contentType="text/hmtl; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Gêneros</title>
        <link href="/css/bootstrap.min.css
    </head>
    <body>
        <div class="container">
        <h1>Gêneros</h1>
            <a href="/genero/insert" class="btn btn-primary">Novo Gênero</a>
            <table class="table">
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach var="item" items="$(generos)">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nome}</td>
                        <td>
                            <a href="/genero/update?id=${item.id}" class="btn btn-warnning">Editar</a>
                            <a href="/genero/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>