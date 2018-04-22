<%-- 
    Document   : controller
    Created on : 11/04/2018, 20:16:46
    Author     : Leandro
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table,td{
                border: 1px solid black;
            }
            
        </style>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF8");
            
            String nome     = request.getParameter("nome");
            String sexo       = request.getParameter("sexo"); 
            String curso     = request.getParameter("curso"); 
            String bolsista = (request.getParameter("bolsista")!=null?"Sim":"Não");
            
            String URL_CONEXAO = "jdbc:mysql://localhost/aulajavaweb";
            String USUARIO = "root";
            String SENHA = "";
            Class.forName("com.mysql.jdbc.Driver");
                     
            Connection conexao = DriverManager.getConnection(URL_CONEXAO, USUARIO, SENHA);
            PreparedStatement ps;
            ps = conexao.prepareStatement("insert into bancoAlunos(nome,sexo,curso,bolsista) values (?,?,?,?)");
            ps.setString(1 ,nome);
            ps.setString(2 ,sexo);
            ps.setString(3 ,curso);
            ps.setString(4 ,bolsista);
            ps.executeUpdate();
            
        %>
        
        <h1> Primeira forma de fazer </h1>
        
        <%="<table>"%>
        <%="<tr><td>Nome:</td><td>"+request.getParameter("nome") +"</td>"%>
        <%="<tr><td>Sexo: </td><td>"+request.getParameter("sexo") +"</td>"%>
        <%="<tr><td>Curso: </td><td>" + request.getParameter("curso") +"</td>"%>
        <%="<tr><td>Bolsista: </td><td>" + (request.getParameter("bolsista")!=null?"Sim":"Não") +"</td>"%>
        <%="</table>"%>        
        

        
        <h1> segunda forma de fazer </h1>
          
       <table>
       <tr><td>Nome:</td><td><%=nome%></td>
       <tr><td>Sexo: </td><td><%=sexo%></td>
       <tr><td>Curso: </td><td><%=curso%></td>
       <tr><td>Bolsista: </td><td><%=bolsista%></td>
       </table>
        
        
    </body> 
</html>
