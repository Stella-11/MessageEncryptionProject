<%-- 
    Document   : start
    Created on : 14 Jul 2025, 2:11:22 PM
    Author     : downtown
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start Page</title>
    </head>
    <body>
        <h1>Start</h1>
        <p>
            Please enter your name and employee Number below:
        </p>
        <form   action="StartSessionServlet.do" method="POST">
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text"  name="name"  required=""/></td>
                </tr>
                <tr>
                    <td>Employee Number:</td>
                    <td><input type="text"  name="id"  required=""/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"  value="SUBMIT"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
