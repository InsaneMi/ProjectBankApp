<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Not Found</title>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-color: #fea3aa;
        }
    </style>
    
</head>

<body>

     <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3"><br><br><br>
              
                   <div class="card">
                   
                        <div class="card-action pink white-text">
                              <h3 style="margin-top:10px;" class="center-align">Entered a Wrong Value</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="bankWelcome.jsp">
                                  
                                        <h6 class="center-align">Some value(s) you have entered is not found in our records.</h6>
                                        <h6 class="center-align">Please Try Again with Correct Value</h6>
                                        
                                        <button type="submit" class="btn purple">OK</button>
                                        
                                  </form>
                                  
                             </div>
                             
                        </div>
                   
                   </div>
              
              </div>
         
         </div>
    
    </div>

</body>

</html>