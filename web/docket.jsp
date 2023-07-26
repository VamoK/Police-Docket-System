<%-- 
    Document   : docket
    Created on : 04 Jul 2023, 5:31:49 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entities.Address"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Contact"%>
<%@page import="za.ac.tut.entities.Docket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="police.css" rel="stylesheet">
        <title>Docket Information Page</title>
    </head>
    <body>
        <%
            Docket d = (Docket) request.getAttribute("d");
            Long caseNumber = d.getId();
            String idNumber = d.getIdNumber();
            String name = d.getName();
            String surname = d.getSurname();
            String gender = d.getGender();
            String offense = d.getCrimeCommiteed();
            List<Contact> c = d.getContacts();
            String cellNumber = c.get(0).getContacts();
            String nextKinCellNnumber = c.get(1).getContacts();
            List<Address> a = d.getAddress();
            String street = a.get(0).getStreet();
            String city = a.get(0).getCity();
            String zip = a.get(0).getPostalCode();
            Date creationDate = d.getCreationDate();
           
        %>
        <div class="dashboard">
            
            <div class="addDocket">
      
                <span class="image12">
                    <a href="" ><img src="images/6.jpg" alt="......"></a>
                </span>
                <span class="form2">
       
                    
                        <label>Case Number:</label><br>
                        <p><%=caseNumber%></p><br>
                        <label>ID Number:</label><br>
                        <p><%=idNumber%></p><br>
                        <label>Name:</label><br>
                        <p><%=name%></p><br>
                        <label>Surname:</label><br>
                        <p><%=surname%></p><br>
                        <label>Gender:</label><br>
                        <p><%=gender%></p><br>
                        <label>Cell Number:</label><br>
                        <p><%=cellNumber%></p><br>
                        <label>Next Kin Cell Number:</label><br>
                        <p><%=nextKinCellNnumber%></p><br>
                        <label>Offense:</label><br>
                        <p><%=offense%></p><br>
                        <label>Street Name:</label><br>
                        <p><%=street%></p><br>
                        <label>City Name:</label><br>
                        <p><%=city%></p><br>
                        <label>Postal Code:</label><br>
                        <p><%=zip%></p><br>
                        <label>Creation Date:</label><br>
                        <p><%=creationDate%></p><br>
                   
                </span>   
            </div>
            
        </div>
    </body>
</html>
