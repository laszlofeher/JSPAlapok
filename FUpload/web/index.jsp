<%-- 
    Document   : index
    Created on : 2017.02.18., 11:02:02
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
        <h1>File upload</h1>

        <form method="POST" enctype="multipart/form-data" action="upload.jsp">
            File to upload: <input type="file" name="upfile"><br/>
            Notes about the file: <input type="text" name="note"><br/>
            <br/>
            <input type="submit" value="Press"> to upload the file!
        </form>
    </body>
</html>
