<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Delete Customer</title>
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-color: #c11b17;
        }
    </style>
    
</head>

<body>

<%
   String name = (String)request.getParameter("name");
   String accno = (String)request.getParameter("accno");
%>

     <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3"><br><br>
              
                   <div class="card">
                   
                       <div class="card-action red white-text">
                              <h3 style="margin-top:10px;" class="center-align">Delete Page</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="DeleteCustomerS" method="post">
                                  
                                        <h5>Name : <%= name %></h5>
                                        <h5>Account No. : <%= accno %></h5>
                                        
                                        <input type="hidden" name="name" value="<%= name %>">
                                        <input type="hidden" name="accno" value="<%= accno %>">
                                        <br>
                                        
                                        <h6>Are you sure, you really want to delete this Customer.</h6>
                                        
                                        <button type="submit" class="btn brown lighten-1">Yes</button>
                                        
                                  </form>
                                  <br><br>
                                  
                                  <form action="bankWelcome.jsp">
                                  
                                        <h6>Or go back to Main Page</h6>
                                        <button type="submit" class="btn blue-grey lighten-2">Go</button>
                                        
                                  </form>
                                  
                             </div>
                             
                        </div>
                   
                   </div>
              
              </div>
         
         </div>
    
    </div>

</body>

</html>