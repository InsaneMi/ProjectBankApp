<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Error Page</title>
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <style>
        body{
           background-color: #e30b5d;
        }
    </style>

</head>

<body>

     <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3"><br><br><br>
              
                   <div class="card">
                   
                        <div class="card-action red white-text">
                              <h3 style="margin-top:10px;" class="center-align">ERROR</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="bankWelcome.jsp" method="post">
                                  
                                        <h5>You are seeing this page because you definitely left any of the field(s) unfilled.</h5>
                                        <h5>So, go to Main Menu and TRY Again.</h5>
                                        <h3>Thank You</h3>
                                        <button type="submit" class="btn lime">Main Menu</button>
                                        
                                  </form>
                                  
                             </div>
                             
                        </div>
                   
                   </div>
              
              </div>
         
         </div>
    
    </div>

</body>

</html>