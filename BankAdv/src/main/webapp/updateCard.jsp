<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Update Card</title>
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <style>
        body{
           background-image: url('https://images.pexels.com/photos/45111/pexels-photo-45111.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
           background-size: cover;
        }
    </style>
    
</head>

<body>

    <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3"><br><br>
              
                   <div class="card">
                   
                        <div class="card-action neon orange white-text">
                              <h3 style="margin-top:10px;" class="center-align">Cancel ATM Card</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="UpdateCardS" method="post" onsubmit="return validation()">
                                        
                                        <h6 class="left-align">Enter Customer Id</h6>
                                        <input type="text" name="cid" placeholder="7 Digit number." id="cid" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Account No.</h6>
                                        <input type="text" name="accno" placeholder="9 Digit number." id="accno" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Card No.</h6>
                                        <input type="text" name="cardno" placeholder="9 Digit number." id="cardno" autocomplete="off">
                                        
                                        <br><br>
                                        <button type="reset" class="btn orange lighten-1">Reset</button>
                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                        <button type="submit" class="btn">Submit</button>
                                        
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
        	 var cid = document.getElementById('cid').value;
        	 var accno = document.getElementById('accno').value;
        	 var cardno = document.getElementById('cardno').value;
        	 
        	 if(cid=="" || accno=="" || cardno=="")
        		 {
        		 	alert("All fields are mandatory to fill.");
        		 	return false;
        		 }
        	 if(isNaN(cid))
 		 		{
 		 			alert("Customer Id can only be number.");
 		 			return false;
 		 		}
     	 	if((cid.length < 7) || (cid.length > 7))
 		 		{
 		 			alert("Customer Id must be of 7 digit.");
 		 			return false;
 		 		}
     	 	if(isNaN(accno))
	 			{
	 				alert("Account Number can only be number.");
	 				return false;
	 			}
	 		if((accno.length < 9) || (accno.length > 9))
	 			{
	 				alert("Account Number must be of 9 digit.");
	 				return false;
	 			}
	 		if(isNaN(cardno))
 				{
 					alert("Card Number can only be number.");
 					return false;
 				}
 			if((cardno.length < 9) || (cardno.length > 9))
 				{
 					alert("Card Number must be of 9 digit.");
 					return false;
 				}
         }
    </script>

</body>

</html>