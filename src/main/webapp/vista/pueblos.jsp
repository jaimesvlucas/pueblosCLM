<%-- 
    Document   : pueblos
    Created on : 25-ene-2021, 21:13:31
    Author     : DAW-B
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    
    <div class="container">
        <h1>Pueblos de Castilla la Mancha</h1>
        <%
            ArrayList<String> pueblos = ( ArrayList<String> ) request.getAttribute("pueblos");
            ArrayList<String> provincias = ( ArrayList<String> ) request.getAttribute("provincias");
            String provincia = (String)request.getAttribute("provincia");
            String textoselected ="";
        %>
        <h4>Provincia seleccionada: <%= provincia%></h4> <br>
        <form action="Poblaciones" method="get">       
                <%for(int i=0;i<provincias.size();i++){
                    if(provincia.equals(provincias.get(i))){%>
                <a class="btn btn-primary" href="Poblaciones?provincia=<%= provincias.get(i)%>" ><%= provincias.get(i)%></a>
                <%}else{%>
                <a class="btn btn-dark" href="Poblaciones?provincia=<%= provincias.get(i)%>" ><%= provincias.get(i)%></a>
                <%}}%>
                <br><br>
            <select class="form-control" name="pueblos">
                <%for(int i=0;i<pueblos.size();i++){%>
                    <option  value=" <%= pueblos.get(i)%>"><%= pueblos.get(i)%></option>
                <%}%>
            </select><br>
            <input type="submit" value="Consultar">
        </form>
    </div>
</html>
