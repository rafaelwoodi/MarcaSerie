<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login - Teste</title>
<link rel="stylesheet" type="text/css" href="estilo/reset.css">
<link rel="stylesheet" type="text/css" href="estilo/structure.css">
</head>
<body>
<form id="formularioContato" class="box login" name="login" method="post" action="LoginServlet">
 <fieldset class="boxBody">
 <label>Login</label>
 <input type="text" name="login" id="login" tabindex="1"><br>
 <label>Senha</label>
 <input type="password" name="senha" id="senha" tabindex="2"><br>
 </fieldset>
 <br>
 <div align="center"><input type="submit" value="Entrar"></div>
 <input type="hidden" name="acao" value="login" />
</form>
</body>
</html>