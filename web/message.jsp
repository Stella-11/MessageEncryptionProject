<%-- 
    Document   : message
    Created on : 14 Jul 2025, 2:24:13 PM
    Author     : downtown
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message   Page</title>
    </head>
    <body>
        <h1>Message </h1>
        <%
            String name = (String)session.getAttribute("name");
            String compname =(String)pageContext.getServletContext().getInitParameter("comp_name");
            %>
    
            <p>
                Hi <b><%=name%></b> , <b><%=compname%></b> here. Good to know you . Please click on one of the link below:
            </p>
    
            
            <ol>
                <li><a href="messageanalysis.jsp">Enter a short message to encrypt.</a></li>
                <li><a>End a session</a></li>
            </ol>
            
    
    
    
    </body>
</html>
