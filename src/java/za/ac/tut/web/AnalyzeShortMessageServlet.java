/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.bl.MessageConverterLocal;
import za.ac.tut.bl.MessageFacadeLocal;
import za.ac.tut.entities.Message;

/**
 *
 * @author downtown
 */
public class AnalyzeShortMessageServlet extends HttpServlet {

    @EJB MessageFacadeLocal mf1;
    @EJB MessageConverterLocal mc1;
    
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session =request.getSession();
        
        String message = request.getParameter("msg");
        
       String encryptedMsg =mc1.encryptMessage(message);
       String decryptedMsg=mc1.decrypt(encryptedMsg);
       Long empno = (Long)session.getAttribute("empno");
       
       Message mess = createEmployee(empno,encryptedMsg,decryptedMsg);
        mf1.create(mess);
        
        RequestDispatcher disp = request.getRequestDispatcher("outcome.jsp");
        disp.forward(request, response);
                
    }

    private Message createEmployee(Long empno, String encryptedMsg, String decryptedMsg) {
     Message msg = new Message();
     msg.setId(empno);
     msg.setEncryptedMessage(encryptedMsg);
     msg.setDecryptedMessage(decryptedMsg);
     msg.setCreationDate(new Date());
     
     return msg;
    }

    

   

}
