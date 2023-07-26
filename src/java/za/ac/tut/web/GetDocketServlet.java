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
import za.ac.tut.ejb.bl.DocketFacadeLocal;
import za.ac.tut.entities.Docket;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class GetDocketServlet extends HttpServlet {
    @EJB
    private DocketFacadeLocal dfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String idNumber = request.getParameter("idNumber");
        
        Docket d = dfl.findDocket(idNumber);
        
        request.setAttribute("d", d);
        
        RequestDispatcher disp = request.getRequestDispatcher("docket.jsp");
        disp.forward(request, response);
    }

}
