<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Customer Created</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-color: #954535;
        }
    </style>
    
</head>

<body>

<%  
    String brcode = (String)request.getAttribute("brcode");
    
    String cid = (String)request.getAttribute("cid");
    String cname = (String)request.getAttribute("cname");
    String caddress = (String)request.getAttribute("caddress");
    String cphone = (String)request.getAttribute("cphone");
%>

    <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3"><br>
              
                   <div class="card">
                        
                        <div class="card-action brown white-text">
                              <h3 style="margin-top:10px;" class="center-align">Customer Added Successfully</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="bankWelcome.jsp">
                                        
                                        <h5 class="center-align">Branch Code : <%= brcode %></h5>
                                        
                                        <h5 class="center-align">Customer Id : <%= cid %></h5>
                                        <h5 class="center-align">Customer Name : <%= cname %></h5>
                                        <h5 class="center-align">Customer Address : <%= caddress %></h5>
                                        <h5 class="center-align">Customer Phone : <%= cphone %></h5>
                                        
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