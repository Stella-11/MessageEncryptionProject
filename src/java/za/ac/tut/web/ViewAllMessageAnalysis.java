/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.MessageFacadeLocal;
import za.ac.tut.entities.Message;

/**
 *
 * @author downtown
 */
public class ViewAllMessageAnalysis extends HttpServlet {

    
 @EJB MessageFacadeLocal mf1;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Message> msg = mf1.findAll();
        
        request.setAttribute("msg", msg);
        
        RequestDispatcher disp =request.getRequestDispatcher("viewAllOutcome.jsp");
        disp.forward(request, response);
    }

    

}
