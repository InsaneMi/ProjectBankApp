<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Edit Customer</title>
    
     <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <style>
        body{
           background-color: #4cc417;
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
                   
                       <div class="card-action green white-text">
                              <h3 style="margin-top:10px;" class="center-align">Edit Page</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="EditCustomerS" method="post" onsubmit="return validation()">
                                  
                                        <h5>Name : <%= name %></h5>
                                        <h5>Account No. : <%= accno %></h5>
                                        
                                        <h6 class="left-align">Enter Add/Update Balance</h6>
                                        <input type="text" name="balance" placeholder="Amount can be max 1 Lakh." id="balance" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Updating Expiry Date</h6>
                                        <input type="text" name="expdate" placeholder="6 Digit number." id="cardexp" autocomplete="off">
                                        <p style="color:green;" class="left-align">(*Expiry date format is MMYYYY)</p>
                                        
                                        <input type="hidden" name="name" value="<%= name %>">
                                        <input type="hidden" name="accno" value="<%= accno %>">
                                        
                                        <br>
                                        <button type="submit" class="btn purple lighten-2">Done</button>
                                        
                                  </form>
                                  
                                  <br>
                                  <hr>
                                  <form action="bankWelcome.jsp">
                                      	<h5>Go back to Main Page</h5>                              
                                      	<button type="submit" class="btn light-blue lighten-1">Go</button>
                                 </form>
                                  
                             </div>
                             
                        </div>
                   
                   </div>
              
              </div>
         
         </div>
    
    </div>
    
    <script type="text/javascript">
         function validation()
         {
        	 var balance = document.getElementById('balance').value;
        	 var cardexp = document.getElementById('cardexp').value;
        	 
        	 if(balance=="" && cardexp=="")
        		 {
        		 	alert("Both the fields can not be unfilled, fill atleast one.");
        		 	return false;
        		 }
        	 if(cardexp=="")
        		 {
        	 		if(isNaN(balance))
		 				{
		 					alert("Balance can only be number.");
		 					return false;
		 				}
     	 			if(balance.length > 6)
		 				{
		 					alert("Add/Update Balance can not be greater than 1 Lakh.");
		 					return false;
		 				}
        		 }
        	 else if(balance=="")
        		 {
     	 			if(isNaN(cardexp))
						{
							alert("Card Expiry can only be number.");
							return false;
						}
					if((cardexp.length < 6) || (cardexp.length > 6))
						{
							alert("Card Expiry must be of 6 digit.");
							return false;
						}
        		 }
        	 else
        		 {
        		 	if(isNaN(balance))
	 					{
	 						alert("Balance can only be number.");
	 						return false;
	 					}
	 				if(balance.length > 6)
	 					{
	 						alert("Add/Update Balance can not be greater than 1 Lakh.");
	 						return false;
	 					}
	 				if(isNaN(cardexp))
						{
							alert("Card Expiry can only be number.");
							return false;
						}
					if((cardexp.length < 6) || (cardexp.length > 6))
						{
							alert("Card Expiry must be of 6 digit.");
							return false;
						}
        		 }
         }
    </script>

</body>

</html>