<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Branch Created</title>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <style>
        body{
           background-color: #357ec7;
        }
    </style>

</head>

<body>

<% 
    String bcode = (String)request.getAttribute("bcode");
    String brname = (String)request.getAttribute("brname");
    String brcode = (String)request.getAttribute("brcode");
    String braddress = (String)request.getAttribute("braddress");
%>

    <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3"><br>
              
                   <div class="card">
                   
                        <div class="card-action blue white-text">
                              <h3 style="margin-top:10px;" class="center-align">Branch Created Successfully</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="bankWelcome.jsp">
                                  
                                        <h5 class="center-align">Bank Code : <%= bcode %></h5>
                                        <h5 class="center-align">Branch Name : <%= brname %></h5>
                                        <h5 class="center-align">Branch Code : <%= brcode %></h5>
                                        <h5 class="center-align">Branch Address : <%= braddress %></h5>
                                        
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