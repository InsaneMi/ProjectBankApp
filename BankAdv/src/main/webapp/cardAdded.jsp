<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Card Added</title>
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-color: #ffdb58;
        }
    </style>

</head>

<body>

<% 
    String cid = (String)request.getAttribute("cid");
    String accno = (String)request.getAttribute("accno");
    
    String cardno = (String)request.getAttribute("cardno");
    String cardtype = (String)request.getAttribute("cardtype");
    String cardcvv = (String)request.getAttribute("cardcvv");
    String cardexp = (String)request.getAttribute("cardexp");
%>

     <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3"><br>
              
                   <div class="card">
                   
                        <div class="card-action yellow white-text">
                              <h3 style="margin-top:10px;" class="center-align">Card Assigned Successfully</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="bankWelcome.jsp">
                                        
                                        <h5 class="center-align">Customer Id : <%= cid %></h5>
                                        <h5 class="center-align">Account No. : <%= accno %></h5>
                                        
                                        <h5 class="center-align">Card No. : <%= cardno %></h5>
                                        <h5 class="center-align">Card Type : <%= cardtype %></h5>
                                        <h5 class="center-align">Card CVV No. : <%= cardcvv %></h5>
                                        <h5 class="center-align">Card Expiry Date : <%= cardexp %></h5>
                                        
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