/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.bl.Employee;

/**
 *
 * @author downtown
 */
public class StartSessionServlet extends HttpServlet {

   
    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        HttpSession session = request.getSession(true);
        
        String id = request.getParameter("id");
        Employee emp = new Employee(id);
        Long empno = Long.parseLong(emp.getEmpno());
        String name = request.getParameter("name");
        
        session.setAttribute("name", name);
        session.setAttribute("empno", empno);
        
        RequestDispatcher disp =request.getRequestDispatcher("message.jsp");
        disp.forward(request, response);
    }

   
}
