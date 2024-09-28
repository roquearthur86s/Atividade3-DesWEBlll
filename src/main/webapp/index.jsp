<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link rel="stylesheet" href="css/main.css">
  <script>
    function showError(message) {
      alert(message);
    }
  </script>
</head>
<body>

<div class="container-login">
  <div class="login-box">
    <h2>Atividade 3</h2>
    <form action="login" method="post" class="login-form">
      <div class="input-box">
        <input type="text" name="username" placeholder="Nome" required>
      </div>
      <div class="input-box">
        <input type="password" name="password" placeholder="Senha" required>
      </div>
      <button type="submit" class="login-btn">Login</button>
    </form>
  </div>
</div>

<%
  String errorMessage = (String) request.getAttribute("errorMessage");
  if (errorMessage != null) {
%>
<script>
  showError("<%= errorMessage %>");
</script>
<%
  }
%>

</body>
</html>