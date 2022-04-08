<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Update Customer</title>
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-image: url('https://images.pexels.com/photos/210588/pexels-photo-210588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
           background-size: cover;
        } 
    </style>
    
</head>

<body>

     <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3">
              
                   <div class="card">
                   
                        <div class="card-action black white-text">
                             <h3 style="margin-top:10px;" class="center-align">Update Customer's Detail</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="UpdateCustomerS" method="post" onsubmit="return validation()">
                                  
                                        <h6 class="left-align">Enter Branch Code</h6>
                                        <input type="text" name="brcode" placeholder="4 Digit number." id="brcode" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Customer Id</h6>
                                        <input type="text" name="cid" placeholder="7 Digit number." id="cid" autocomplete="off">
                                        
                                        <h4>Choose an option :</h4>
                                        <p style="color:green;">( *please note : you can update only one value at a time )</p>
                                        <h5>
                                           1 for Name Update
                                           <br>
                                           2 for Phone Update
                                           <br>
                                           3 for Address Update
                                           <br>
                                           4 for Branch Update
                                        </h5>
                                        
                                        <h6 class="left-align">Enter Your Option</h6>
                                        <input type="text" name="option" placeholder="Number between 1 to 4." id="option" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Updating Value</h6>
                                        <input type="text" name="upvalue" placeholder="Valid updating value" id="upvalue" autocomplete="off">
                                        
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
        	 var brcode = document.getElementById('brcode').value;
        	 var cid = document.getElementById('cid').value;
        	 var option = document.getElementById('option').value;
        	 var upvalue = document.getElementById('upvalue').value;
        	 
        	 if(brcode=="" || cid=="" || option=="" || upvalue=="")
        		 {
        		 	alert("All fields are mandatory to fill.");
        		 	return false;
        		 }
        	 if(isNaN(brcode))
    		 	{
    		 		alert("Branch Code can only be number.");
    		 		return false;
    		 	}
        	 if((brcode.length < 4) || (brcode.length > 4))
    		 	{
    		 		alert("Branch Code must be of 4 digit.");
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
        	 if(isNaN(option))
 		 		{
 		 			alert("Option can only be number.");
 		 			return false;
 		 		}
     	 	if(option.length > 1)
 		 		{
 		 			alert("Option must be of 1 digit.");
 		 			return false;
 		 		}
     	 	if((option > 4) || option < 1)
		 		{
		 			alert("Option must be between 1 to 4.");
		 			return false;
		 		}
        	 if(option==1)
        		 {
        		 	if((upvalue.length < 3) || (upvalue.length > 30))
        		 		{
        		 			alert("Customer Name must be of 3 to 30 characters.");
        		 			return false;
        		 		}
        	 		if(!isNaN(upvalue))
        		 		{
        		 			alert("Customer Name must consist character.");
        		 			return false;
        		 		}
        		 }
        	 if(option==2)
        		 {
        		 	if(isNaN(upvalue))
  		 				{
  		 					alert("Phone can only be number.");
  		 					return false;
  		 				}
      	 			if((upvalue.length < 9) || (upvalue.length > 9))
  		 				{
  		 					alert("Phone must be of 9 digit.");
  		 					return false;
  		 				}
        		 }
        	 if(option==3)
        		 {
        		 	if((upvalue.length < 5) || (upvalue.length > 50))
     		 			{
     		 				alert("Branch Address must be of 5 to 50 characters.");
     		 				return false;
     		 			}
        		 }
        	 if(option==4)
        		 {
        		 	if(isNaN(upvalue))
     		 			{
     		 				alert("Branch Code can only be number.");
     		 				return false;
     		 			}
         	 		if((upvalue.length < 4) || (upvalue.length > 4))
     					{
     		 				alert("Branch Code must be of 4 digit.");
     		 				return false;
     		 			}
        		 }
         }
    </script>

</body>

</html>