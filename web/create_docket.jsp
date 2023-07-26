                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   <%-- 
    Document   : admin_dashboard
    Created on : 24 Jun 2023, 10:33:20 AM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="police.css" rel="stylesheet">
        <title>Create Docket Page</title>
        
        
    </head>
    <body>
        <div class="dashboard">
            
            <div class="addDocket">
      
                <span class="image12">
                    <a href="create_docket.jsp" ><img src="images/6.jpg" alt="......"></a>
                </span>
                <span class="form2">
                    
                    <form action="AddDocketServlet.do" method="POST">
                        <label>ID Number:</label><br>
                        <input class="user" type="text" name="idNumber" minlength="13" maxlength="13" required="" /><br>
                        <label>Name:</label><br>
                        <input class="user" type="text" name="name"  required="" /><br>
                        <label>Surname:</label><br>
                        <input class="user" type="text" name="surname" required="" /><br>
                        <label>Gender:</label><br>
                        <select class="user" name="gender" >
                            <option ></option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                        </select><br>
                        <label>Cell Number:</label><br>
                        <input class="user" type="text" name="contact1" minlength="10" maxlength="10" required="" /><br>
                        <label>Next Kin Cell Number:</label><br>
                        <input class="user" type="text" name="contact2" minlength="10" maxlength="10" required="" /><br>
                        <label>Offense:</label><br>
                        <input class="user" type="text" name="offense" placeholder="Murder" required="" /><br>
                        <label>Street Name:</label><br>
                        <input class="user" type="text" name="street" required="" /><br>
                        <label>City Name:</label><br>
                        <input class="user" type="text" name="city" required="" /><br>
                        <label>Postal Code:</label><br>
                        <input class="user" type="text" name="zip" required="" /><br>
                        <input class="userbtn" type="submit" value="ADD DOCKET" /><br>
                    </form>
                </span>   
            </div>
            
        </div>
    </body>
</html>
