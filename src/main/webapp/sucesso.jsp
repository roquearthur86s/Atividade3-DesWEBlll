<%@ page session="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Sucesso</title>
</head>
<body>

<%
    if (session == null || session.getAttribute("usuarioLogado") == null) {
        response.sendRedirect("acessoNegado.jsp");
        return;
    }
%>

<h2>Login bem-sucedido!</h2>
<p>Bem-vindo, <%= session.getAttribute("usuarioLogado") %>!</p>
<a href="logout">Logout</a>
</body>
</html>
