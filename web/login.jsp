<%-- 
    Document   : login
    Created on : 24 Jun 2023, 1:52:42 AM
    Author     : Vamokuhle Khumalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="police.css" rel="stylesheet">
        <title>Login Page</title>
    </head>
    <body>
        <div class="container">
            
            <div class="info">
                <span class="image2">
                    <img src="images/9.jpg" alt=".....">
                </span>
                <span class="form">
                    <label class="loginName">LOGIN</label><br>
                    <form action="LoginServlet.do" method="POST"><br>
                        <input class="userInput" type="email" name="email" placeholder="email address" required="Please fill this field" /><br>
                        <input class="userInput" type="password" name="password" placeholder="password" required="Please fill this field"/><br>
                        
                        <button type="submit">LOGIN</button>
                    </form>
                </span>  
            </div>

        </div>
    </body>
</html>
