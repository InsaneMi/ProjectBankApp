<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Customer Updated</title>
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-color: #3a3b3c;
        }
    </style>
    
</head>

<body>

<% 
    String cid = (String)request.getAttribute("cid");
    String oldvalue = (String)request.getAttribute("oldvalue");
    String upvalue = (String)request.getAttribute("upvalue");
%>

     <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3"><br>
              
                   <div class="card">
                   
                        <div class="card-action black white-text">
                              <h3 style="margin-top:10px;" class="center-align">Customer Updated Successfully</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="bankWelcome.jsp">
                                  
                                        <h5 class="center-align">Customer <%= cid %> Updated</h5>
                                        <h5 class="center-align">Old Value : <%= oldvalue %></h5>
                                        <h5 class="center-align">Updated Value : <%= upvalue %></h5>
                                        
                                        <button type="submit" class="btn green">OK</button>
                                        
                                  </form>
                                  
                             </div>
                             
                        </div>
                   
                   </div>
              
              </div>
         
         </div>
    
    </div>

</body>

</html>