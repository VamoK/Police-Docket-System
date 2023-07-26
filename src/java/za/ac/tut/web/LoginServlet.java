/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.entities.Admin;
import za.ac.tut.ejb.bl.AdminFacadeLocal;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class LoginServlet extends HttpServlet {
    @EJB
    private AdminFacadeLocal afl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            Admin admin = afl.login(email, password);
            
            RequestDispatcher disp = request.getRequestDispatcher("StartSsessionServlet.do");
            disp.forward(request, response);
        } catch (Exception ex) {
            RequestDispatcher disp = request.getRequestDispatcher("error.jsp");
            disp.forward(request, response);
        }
    }
}

