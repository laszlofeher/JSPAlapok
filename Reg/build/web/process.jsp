<%-- 
    Document   : process
    Created on : 2017.02.18., 9:20:41
    Author     : tanulo
--%>
<%@page import="org.flp.model.UserRegistrationDAO"%>  
<jsp:useBean id="user" class="org.flp.beans.User"/>  

<jsp:setProperty property="*" name="user"/>  

<%
    String status = UserRegistrationDAO.register(user);
    out.print(status);
    if (!status.equals("0")) {
        out.print("You are successfully registered");
    } else {
        out.print("Error in registered "+status);
    }

%>  
