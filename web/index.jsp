<%-- 
    Document   : index
    Created on : 11/04/2018, 19:47:10
    Author     : Leandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="controller.jsp" method="get">
Cadastro de alunos<br>
	Nome: <input type="text" name="nome"/><br>
	<input type="radio" id="feminino" name="sexo" value="feminino"/>Feminino<br>
	<input type="radio" id="masculino" name="sexo" value="masculino"/>Masculino<br>  
	Curso: <select name="curso">
		<option value="Análise e Desenvolvimento de Sistemas">Análise e Desenv de Sistemas</option>
		<option value="Ciência da Computação">Ciência da Computação</option>
		<option value="Engenharia da Computação">Engenharia da Computação</option>
	</select><br>
	
	<input type="checkbox" name="bolsista"/>Bolsista	<br>

        <input type="submit" value="Enviar"/>                
        </form>
        
    </body>
</html>
