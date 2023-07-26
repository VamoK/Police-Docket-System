<%-- 
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
        <title>Dashboard Page</title>
    </head>
    <body>
        <div class="dashboard">
            
            <div class="addDocket">
      
                <span class="image">
                    <a href="create_docket.jsp" ><img src="images/5.jpg" alt="......"></a>
                </span>
                <span class="desc">
                    <p>ADD DOCKET</p>
                    <label class="p">This platform helps managing dockets in a simpler and easier way. It allows a user to create and edit a docket.</label><br>
                    <label class="link"><a href="create_docket.jsp" >Manager Docket</a></label>
                </span>
                
            </div>
            
            <div class="getDocket">
      
               <span class="image">
                    <a href="get_docket.jsp" ><img src="images/10.jpg" alt="......"></a>
                </span>
                <span class="desc">
                    <p>GET DOCKET</p>
                    <label class="p">This platform helps in getting a specific docket from the database using the case number or id number</label><br>
                    <label class="link"><a href="get_docket.jsp" >Get Specific Docket</a></label>
                </span>
                
            </div>
            
        </div>
    </body>
</html>
