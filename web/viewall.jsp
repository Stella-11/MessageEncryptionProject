<%-- 
    Document   : viewall
    Created on : 17 Jul 2025, 12:09:01 PM
    Author     : downtown
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Message Analysis Page</title>
    </head>
    <body>
        <h1>View message analysis</h1>
        <%
            String name = (String)session.getAttribute("name");
            String compname =(String)pageContext.getServletContext().getInitParameter("comp_name");
            %>
    
            <p>
                Hey <b><%=name%></b>, it's <b><%=compname%></b> again . Click on the button below for the message analysis
            </p>
            <form  action="ViewAllMessageAnalysis.do"  method="GET">
                <table>
                    <tr>
                        <td></td>
                        <td><input type="submit"  value="SUBMIT"/></td>
                    </tr>
                </table>
            </form>
    
    </body>
</html>
