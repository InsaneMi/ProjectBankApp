<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Add Account</title>

    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('select');
        var instances = M.FormSelect.init(elems);
      });
    </script>
    
    <style>
        body{
           background-image: url('https://images.pexels.com/photos/4968384/pexels-photo-4968384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
           background-size: cover;
        } 
    </style>
    
</head>

<body>

    <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3">
              
                   <div class="card">
                         
                         <div class="card-action grey white-text">
                             <h3 style="margin-top:10px;" class="center-align">Add Account</h3>
                        </div>
                   
                        <div class="card-content">
                             
                             <div class="form center-align">
                             
                                  <form action="AddAccountS" method="post" onsubmit="return validation()">
                                  
                                        <h6 class="left-align">Enter Branch Code</h6>
                                        <input type="text" name="brcode" placeholder="4 Digit number." id="brcode" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Customer Id</h6>
                                        <input type="text" name="cid" placeholder="7 Digit number." id="cid" autocomplete="off">
                                        
                                        <div class="input-field"> 
                                        <select name="acctype" id="acctype">
                                             <option value="">Select Account Type</option>
                                             
                                                  <option value="Current Bank Account">Current Bank Account</option>
                                                  <option value="Saving Bank Account">Saving Bank Account</option>
                                                  <option value="Salary Bank Account">Salary Bank Account</option>
                                                  <option value="Zero Balance Account">Zero Balance Account</option>
                                             
                                        </select>
                                        </div>
                                        <br>
                                        <h6 class="left-align">Enter Account Number</h6>
                                        <input type="text" name="accno" placeholder="9 Digit number." id="accno" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Balance</h6>
                                        <input type="text" name="balance" placeholder="Amount can be max 1 Lakh." id="balance" autocomplete="off">
                                        
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
        	 var acctype = document.getElementById('acctype').value;
        	 var accno = document.getElementById('accno').value;
        	 var balance = document.getElementById('balance').value;
        	 
        	 if(brcode=="" || cid=="" || accno=="" || balance=="")
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
        	 if(isNaN(balance))
 		 		{
 		 			alert("Balance can only be number.");
 		 			return false;
 		 		}
        	 if(balance.length > 6)
		 		{
		 			alert("Opening Balance can not be greater than 1 Lakh.");
		 			return false;
		 		}
        	 if(acctype=="")
		 		{
		 			alert("Select Account Type from DropDown Menu.");
		 			return false;
		 		}
         }
    </script>

</body>

</html>