<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Add Customer</title>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-image: url('https://images.pexels.com/photos/3943719/pexels-photo-3943719.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
           background-size: cover;
        } 
    </style>
    
</head>

<body>

     <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3">
              
                   <div class="card">
                   
                        <div class="card-action brown white-text">
                              <h3 style="margin-top:10px;" class="center-align">Add Customer</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="AddCustomerS" method="post" onsubmit="return validation()">
                                  
                                        <h6 class="left-align">Enter Branch Code</h6>
                                        <input type="text" name="brcode" placeholder="4 Digit number." id="branchcode" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Customer Id</h6>
                                        <input type="text" name="cid" placeholder="7 Digit number." id="id" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Customer Name</h6>
                                        <input type="text" name="cname" placeholder="Character between 3 to 30." id="name" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Customer Address</h6>
                                        <input type="text" name="caddress" placeholder="Character between 5 to 50." id="address" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Customer Phone</h6>
                                        <input type="text" name="cphone" placeholder="9 Digit number." id="phone" autocomplete="off">
                                        
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
        	 var branchcode = document.getElementById('branchcode').value;
        	 var id = document.getElementById('id').value;
        	 var name = document.getElementById('name').value;
        	 var address = document.getElementById('address').value;
        	 var phone = document.getElementById('phone').value;
        	 
        	 if(branchcode=="" || id=="" || name=="" || address=="" || phone=="")
        		 {
        		 	alert("All fields are mandatory to fill.");
        		 	return false;
        		 }
        	 if(isNaN(branchcode))
    		 	{
    		 		alert("Branch Code can only be number.");
    		 		return false;
    		 	}
        	 if((branchcode.length < 4) || (branchcode.length > 4))
    		 	{
    		 		alert("Branch Code must be of 4 digit.");
    		 		return false;
    		 	}
        	 if(isNaN(id))
    		 	{
    		 		alert("Customer Id can only be number.");
    		 		return false;
    		 	}
        	 if((id.length < 7) || (id.length > 7))
    		 	{
    		 		alert("Customer Id must be of 7 digit.");
    		 		return false;
    		 	}
        	 if((name.length < 3) || (name.length > 30))
        		 {
        		 	alert("Customer Name must be of 3 to 30 characters.");
        		 	return false;
        		 }
        	 if(!isNaN(name))
        		 {
        		 	alert("Customer Name must consist character.");
        		 	return false;
        		 }
        	 if((address.length < 5) || (address.length > 50))
    		 	{
    		 		alert("Branch Address must be of 5 to 50 characters.");
    		 		return false;
    		 	}
        	 if(isNaN(phone))
 		 		{
 		 			alert("Phone can only be number.");
 		 			return false;
 		 		}
     	 	if((phone.length < 9) || (phone.length > 9))
 		 		{
 		 			alert("Phone must be of 9 digit.");
 		 			return false;
 		 		}
         }
    </script>

</body>

</html>