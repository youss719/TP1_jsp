
<%-- 
    Document   : ListeEmployes
    Created on : 22 déc. 2020, 16:52:01
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Affichage des employés</h1>
        <%@page import="java.sql.*" %>
        <table width="100%" border="2">
            <tr>
                <th width="25%"> Matricule </th>
                <th width="25%"> Nom </th>
                <th width="25%"> Prenom </th>
                <th width="25%"> Service </th>
            </tr>
            <% 
                try{
                    Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
                    Connection conn =  DriverManager.getConnection("jdbc:derby://localhost:1527/Etablissement","root","azerty");
                    Statement stmt = conn.createStatement();
                    String sql ="select * from employe";
                    ResultSet rs = stmt.executeQuery(sql);
                    while(rs.next()){%>
                    <tr>
                        <td><%= rs.getString("matricule")%></td>
                        <td><%= rs.getString("nom")%></td>
                        <td><%= rs.getString("prenom")%></td>
                        <td><%= rs.getString("service")%></td>
                    </tr>
                    <%      
                }
                    %>   
                
        </table>
                <% if(stmt != null){
                    stmt.close();
                    }
                    if (conn != null){
                        conn.close();
                    }
                    }//fin bloc try 
                  catch (Exception e){
                    out.print(e);
}
%>
     </body>
</html>
