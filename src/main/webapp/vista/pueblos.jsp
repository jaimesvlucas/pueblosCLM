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
    </head>
    
        <h1>Pueblos de Castilla la Mancha</h1>
        <%
            ArrayList<String> pueblos = ( ArrayList<String> ) request.getAttribute("pueblos");
            ArrayList<String> provincias = ( ArrayList<String> ) request.getAttribute("provincias");
            String provincia = (String)request.getAttribute("provincia");
        %>
        Provincia seleccionada: <%= provincia%> <br>
        <form action="Poblaciones" method="post">
            <select name="provincias">
                <%for(int i=0;i<provincias.size();i++){
                    if(provincias.get(i).equals(provincia)){
                %>
                    <option selected  value=" <%= provincias.get(i)%>"><%= provincias.get(i)%></option>
                <%}else{%>
                    <option value=" <%= provincias.get(i)%>"><%= provincias.get(i)%></option>
                <%}}%>
            </select><br>
            <select name="pueblos">
                <%for(int i=0;i<pueblos.size();i++){%>
                    <option  value=" <%= pueblos.get(i)%>"><%= pueblos.get(i)%></option>
                <%}%>
            </select>
            <input type="submite" value="Consultar">
        </form>
</html>
