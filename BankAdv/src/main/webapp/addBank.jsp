<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Add Bank/Branch</title>
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-image: url('https://images.pexels.com/photos/259249/pexels-photo-259249.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
           background-size: cover;
        } 
    </style>
    
</head>

<body>

     <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3">
              
                   <div class="card">
                   
                        <div class="card-action orange white-text">
                              <h3 style="margin-top:10px;" class="center-align">Add Bank</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="AddBankS" method="post" onsubmit="return validation()">
                                  
                                        <h6 class="left-align">Enter Bank Name</h6>
                                        <input type="text" name="bname" placeholder="Character between 3 to 30." id="name" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Bank Code</h6>
                                        <input type="text" name="bcode" placeholder="5 Digit number." id="code" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Bank Address</h6>
                                        <input type="text" name="baddress" placeholder="Character between 5 to 50." id="address" autocomplete="off">
                                        
                                        <br><br>
                                        <button type="reset" class="btn orange lighten-1">Reset</button>
                                        &nbsp; &nbsp; &nbsp; &nbsp;
                                        <button type="submit" class="btn">Submit</button>
                                       
                                  </form>
                                  
                                  <h5 class="center-align">or</h5>
                                  
                                  <form action="ShowAllBank" method="post">
                                  
                                        <h5 class="center-align">Already have a Bank? <br> Create a New Branch.</h5>
                                        
                                        <button type="submit" class="btn green accent-3">Create</button>
                                  
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
        	 var name = document.getElementById('name').value;
        	 var code = document.getElementById('code').value;
        	 var address = document.getElementById('address').value;
        	 
        	 if(name=="" || code=="" || address=="")
        		 {
        		 	alert("All fields are mandatory to fill.");
        		 	return false;
        		 }
        	 if((name.length < 3) || (name.length > 30))
        		 {
        		 	alert("Bank Name must be of 3 to 30 characters.");
        		 	return false;
        		 }
        	 if(!isNaN(name))
        		 {
        		 	alert("Bank Name must consist character.");
        		 	return false;
        		 }
        	 if(isNaN(code))
    		 	{
    		 		alert("Bank Code can only be number.");
    		 		return false;
    		 	}
        	 if((code.length < 5) || (code.length > 5))
    		 	{
    		 		alert("Bank Code must be of 5 digit.");
    		 		return false;
    		 	}
        	 if((address.length < 5) || (address.length > 50))
    		 	{
    		 		alert("Bank Address must be of 5 to 50 characters.");
    		 		return false;
    		 	} 
         }
    </script>

</body>

</html>