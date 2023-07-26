/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.entities.Address;
import za.ac.tut.entities.Contact;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class StartSsessionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session  = request.getSession(true);
        
        List<Contact> contactList = new ArrayList<>();
        
        List<Address> addressList = new ArrayList<>();
        
        session.setAttribute("contactList", contactList);
        session.setAttribute("addressList", addressList);
        
        RequestDispatcher disp = request.getRequestDispatcher("admin_dashboard.jsp");
        disp.forward(request, response);
    }

    
}
