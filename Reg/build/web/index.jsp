<%-- 
    Document   : index
    Created on : 2017.02.18., 9:11:24
    Author     : tanulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Regisztráció </h1>
        
        <form action="process.jsp" method="POST">  
            <input type="text" name="uname" placeholder="Felhasználó név"/><br/>  
            <input type="text" name="uemail"  placeholder="Email cím"/><br/>  
            <input type="password" name="upass"  placeholder="Jelszó"/><br/>  
            <input type="submit" value="register"/>  
        </form>  
    </body>
</html>
