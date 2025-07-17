<%-- 
    Document   : viewAllOutcome
    Created on : 17 Jul 2025, 12:17:45 PM
    Author     : downtown
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Message Analysis Page</title>
    </head>
    <body>
        <h1>View message analysis</h1>
        <%
            String name = (String)session.getAttribute("name");
            String compname =(String)pageContext.getServletContext().getInitParameter("comp_name");
            List<Message> msg =(List<Message>)request.getAttribute("msg");
            %>
            <p>
                Hi <b><%=name%></b> , it's <b><%=compname%></b> again. Below is your message analysis
            </p>
            <table>
                <th>EMPNO</th>
                <th>Decrypted message</th>
                <th>Encrypted message</th>
                <th>Date</th>
            
            <%
                for(int i=0;i<msg.size();i++){
                    Message ms = msg.get(i);
                    Long id =ms.getId();
                    String encry =ms.getDecryptedMessage();
                    String decry = ms.getEncryptedMessage();
                    Date dob=ms.getCreationDate();
                    SimpleDateFormat simp = new SimpleDateFormat("dd-mm-yyyy");
                    String date =simp.format(dob);
                
                %>
             
                <tr>
                    <td><%=id%></td>
                    <td><%=encry%></td>
                    <td><%=decry%></td>
                    <td><%=date%></td>
                </tr>
            
                <%
                    }

                    %>
            
            
            </table>
                    <ol>
                        <li><a href="LogOutServlet.do" method="GET">Logout</a></li>
                    </ol>
            </body>
</html>
