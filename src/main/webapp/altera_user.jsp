<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	// verificando se tem um atributo login na sessao
	// se tiver vai continuar e mostrar o menu
	if(session.getAttribute("login") != null) {
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<title>Alteração de Users - Marca Séries</title>
<link rel="stylesheet" type="text/css" href="estilo/cadastro_users.css">
<link rel="stylesheet" type="text/css" href="estilo/default.css">
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
</head>
<body>
<div id="wrapper">
	<div id="header" class="container">
		<div id="logo">
			<h1>Marca Séries</h1>
		</div>
		<div id="menu">
			<ul>
				<li><a href="home.jsp" accesskey="1" title="Home Page">Home Page</a></li>
				<li class="current_page_item"><a href="users.jsp" accesskey="2" title="Users">Users</a></li>
				<li><a href="#" accesskey="3" title="">About Us</a></li>
				<li><a href="#" accesskey="4" title="">Careers</a></li>
				<li><a href="LoginServlet?acao=logout" accesskey="5" title="">Exit</a></li>
			</ul>
		</div>
	</div>
	<div id="page" class="container">
		<div id="content">
			<div class="article borders">
				<div class="title">
				 <h2>User</h2>
					<form id="formCadastro" class="rounded" method="post" action="AlteraUsersServlet">
					<div class="field">
						<input type="hidden" class="input" name="id_user" id="id_user" value="<%= Integer.parseInt(request.getParameter("id"))%>" />				
					    <label for="email">Login:</label>
					    <input type="text" class="input" name="login" id="login" value="<%= request.getParameter("login")%>" />
					</div>
					<div class="field">
					    <label for="message">Senha:</label>
					    <input type="text" class="input" name="senha" id="senha" value="<%= request.getParameter("senha")%>" />
					</div>
					<div class="field">
					    <label for="message">Nome:</label>
					    <input type="text" class="input" name="nome_completo" id="nome_completo" value="<%= request.getParameter("nome")%>" />
					</div>
					<div class="field">
					    <label for="message">Idade:</label>
					    <input type="text" class="input" name="idade" id="idade" value="<%= Integer.parseInt(request.getParameter("idade"))%>" />
					</div>
					<input type="submit" name="Submit"  class="buttonSubmit" value="Alterar" />
					</form>
				</div>
			</div>
			<div class="article">
				<div class="title">	
				</div>
			</div>
		</div>
		<div id="sidebar">
			<div class="box1">
				<div class="title">
				</div>
				<ul class="style2">
				</ul>
			</div>
			<div class="box2">
				<div class="title">
				</div>
				<ul class="style2">
				</ul>
			</div>
			<div class="box3">
				<div class="title">
				</div>
				<ul class="style2">
				</ul>
			</div>
		</div>
	</div>
</div>
<div id="footer-wrapper">
	<div id="portfolio" class="container">
		<div id="column1">
	    </div>
		<div id="column2">
		</div>
		<div id="column3">
		</div>
		<div id="column4">
		</div>
	</div>
</div>
 </body>
</html>
<%
	// se não existir um login na sessao, 
	// vai enviar para a página de login novamente
	} else {
%>
	<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>