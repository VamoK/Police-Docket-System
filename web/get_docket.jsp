<%-- 
    Document   : get_docket
    Created on : 04 Jul 2023, 5:01:16 PM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="police.css" rel="stylesheet">
        <title>Get Docket Page</title>
    </head>
    <body>
        <div class="container">
            
            <div class="info">
                <span class="image12">
                    <img src="images/8.jpg" alt=".....">
                </span>
                <span class="form2">
                    <label class="loginName">GET DOCKET</label><br>
                    <form action="GetDocketServlet.do" method="POST"><br>
                        <label>ID NUMBER</label><br>
                        <input class="user" type="text" name="idNumber"  required="Please fill this field"/><br>
                        
                        <input class="userbtn" type="submit" value="GET DOCKET"  /><br>
                    </form>
                </span>  
            </div>

        </div>
    </body>
</html>

