<%@ page language="java" contentType="text/html; charset=iso-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
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
<title>Users - Marca Séries</title>
<link rel="stylesheet" type="text/css" href="estilo/home.css">
<link rel="stylesheet" type="text/css" href="estilo/default.css">
<!--[if IE 6]>
<link href="default_ie6.css" rel="stylesheet" type="text/css" />
<![endif]-->
<script type="text/javascript" language="javascript" src="javascript/functions.js"></script>
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
			<div id="dt_example">
				<div id="container">
					 <%@ page import="com.banco.UserDao" %>  
		             <%@ page import="java.util.List" %>  
		             <%@ page import="com.classes.User" %>
					 <table id="box-table-a" summary="Employee Pay Sheet">
					    <thead>
					    	<tr>
					    	    <th  scope="col" align="center">&nbsp;</th>
							    <th  scope="col" align="center">&nbsp;</th>
							    <th  scope="col" align="center">Login</th>
							    <th  scope="col" align="center">Nome Completo</th>
							    <th scope="col" align="center">Idade</th>        	
					        </tr>
					    </thead>
					     <tbody>
		             <% UserDao dao = new UserDao();
		     		
		     		 List<User> users = dao.getLista();
		     		
		     		for (User user : users) {
		     			%>	
		     			<tr>
		     			<td align="center"><a href="altera_user.jsp?id=<%out.print(user.getId_user());%>&nome=<%out.print(user.getNome_completo());%>&login=<%out.print(user.getLogin());%>&senha=<%out.print(user.getSenha());%>&idade=<%out.print(user.getIdade());%>">
		     			<img src="imagens/alterar.png" title="Alterar" /></a></td>
		     			<td align="center"><a href="lista_user.jsp?id=<%out.print(user.getId_user());%>&nome=<%out.print(user.getNome_completo());%>&login=<%out.print(user.getLogin());%>&senha=<%out.print(user.getSenha());%>&idade=<%out.print(user.getIdade());%>">
		     			<img src="imagens/listar.gif" title="Listar" /></a></td>
		     			<td align="center"><%out.print(user.getLogin());%></td>
		     			<td align="center"><%out.print(user.getNome_completo());%></td>
		     			<td align="center"><%out.print(user.getIdade());%></td>
		     			<% }
		             %>
		             </tr>
		             <tbody>
		</table>
				</div>
			</div>
			<div align="left">
		       <a href="cadastro_user.jsp"><img src="imagens\icon_cadastro.jpg" alt="Cadastrar" width="40" height="40"></a>
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