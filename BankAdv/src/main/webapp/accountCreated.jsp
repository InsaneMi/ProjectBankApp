<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Account Created</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-color: #bcc6cc;
        }
    </style>
    
</head>

<body>

<% 
    String brcode = (String)request.getAttribute("brcode");
    String cid = (String)request.getAttribute("cid");
    
    String acctype = (String)request.getAttribute("acctype");
    String accno = (String)request.getAttribute("accno");
    String balance = (String)request.getAttribute("balance");
%>

    <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3"><br>
              
                   <div class="card">
                        
                        <div class="card-action grey white-text">
                               <h3 style="margin-top:10px;" class="center-align">Account Opened Successfully</h3>
                        </div>
                        
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="bankWelcome.jsp">
                                  
                                        <h5 class="center-align">Branch Code : <%= brcode %></h5>
                                        <h5 class="center-align">Customer Id : <%= cid %></h5>
                                        
                                        <h5 class="center-align">Account Type : <%= acctype %></h5>
                                        <h5 class="center-align">Account No. : <%= accno %></h5>
                                        <h5 class="center-align">Balance : <%= balance %></h5>
                                        
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