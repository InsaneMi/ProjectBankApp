<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Bank Welcome</title>
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-image: url('https://images.pexels.com/photos/210574/pexels-photo-210574.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
           background-size: cover;
        }
    </style>
    
</head>

<body>

    <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3">
              
                   <div class="card">
                   
                        <div class="card-action yellow white-text">
                              <h3 style="margin-top:10px;" class="center-align">Bank Welcome Page</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="addBank.jsp">
                                  
                                        <h5>Add New Bank/Bank Branch</h5>
                                        <button type="submit" class="btn yellow">Go</button>
                                        
                                  </form>
                                  
                                  <form action="addCustomer.jsp">
                                  
                                        <h5>Add Customer to Bank</h5>
                                        <button type="submit" class="btn yellow">Go</button>
                                        
                                  </form>
                                  
                                  <form action="addAccount.jsp">
                                  
                                        <h5>Open New Bank Account</h5>
                                        <button type="submit" class="btn yellow">Go</button>
                                        
                                  </form>
                                  
                                  <form action="updateCustomer.jsp">
                                  
                                        <h5>Update Existing Customer Details</h5>
                                        <button type="submit" class="btn yellow">Go</button>
                                        
                                  </form>
                                  
                                  <form action="addCard.jsp">
                                  
                                        <h5>Issue ATM Card against Bank Account</h5>
                                        <button type="submit" class="btn yellow">Go</button>
                                        
                                  </form>
                                  
                                  <form action="updateCard.jsp">
                                  
                                        <h5>Cancelled or Reject ATM Card</h5>
                                        <button type="submit" class="btn yellow">Go</button>
                                        
                                  </form>
                                  
                                  <form action="ShowAllCustomerS" method="post">
                                  
                                        <h5>Show All Customer</h5>
                                        <button type="submit" class="btn yellow">Go</button>
                                        
                                  </form>
                                  
                             </div>
                             
                        </div>
                   
                   </div>
              
              </div>
         
         </div>
    
    </div>

</body>

</html>