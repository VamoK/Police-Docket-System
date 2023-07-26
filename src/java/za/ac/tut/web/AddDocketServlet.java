/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.ejb.bl.DocketFacadeLocal;
import za.ac.tut.entities.Address;
import za.ac.tut.entities.Contact;
import za.ac.tut.entities.Docket;

/**
 *
 * @author Vamokuhle Khumalo
 */
public class AddDocketServlet extends HttpServlet {
    @EJB
        private DocketFacadeLocal dfl;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        
        List<Contact> contactList = (List<Contact>) session.getAttribute("contactList");
        List<Address> addressList = (List<Address>) session.getAttribute("addressList");
        
        String idNumber = request.getParameter("idNumber");
        
        String name = request.getParameter("name");
        
        String surname = request.getParameter("surname");
        
        String gender = request.getParameter("gender");
        
        String contact1 = request.getParameter("contact1");
        
        String contact2 = request.getParameter("contact2");
        
        String offense = request.getParameter("offense");
        
        String street = request.getParameter("street");
        
        String city = request.getParameter("city");
        
        String zip = request.getParameter("zip");
        
        Address address = new Address(street, city, zip);
        
        addressList.add(address);
        
        Contact c1 = new Contact(contact1);
        contactList.add(c1);
        
        Contact c2 = new Contact(contact2);
        contactList.add(c2);
        
        Date creationDate = new Date();
        
        Docket docket = new Docket(idNumber, name, surname, gender,offense, creationDate);
        docket.setAddress(addressList);
        docket.setContacts(contactList);
        
        dfl.create(docket);
        
        RequestDispatcher disp = request.getRequestDispatcher("create_docket.jsp");
        disp.forward(request, response);
        
    }

    

}
