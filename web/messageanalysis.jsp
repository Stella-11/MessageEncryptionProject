<%-- 
    Document   : messageanalysis
    Created on : 17 Jul 2025, 11:24:42 AM
    Author     : downtown
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Message Encryption Page</title>
    </head>
    <body>
        <h1>Message encryption</h1>
        <%String name = (String)session.getAttribute("name");
            String compname =(String)pageContext.getServletContext().getInitParameter("comp_name");
            %>
    
            <p>
                Hey <b><%=name%></b> , it's <b><%=compname%></b> again . Please enter your message you'd like to encrypt below
            </p>
            <form action="AnalyzeShortMessageServlet.do" method="POST">
            <table>
                <tr>
                    <td>
                        <textarea rows="10" cols="15" name="msg">Enter your short message here...</textarea>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="ENCRYPT"/></td>
                </tr>
            </table>
        </form>
    
    </body>
</html>
