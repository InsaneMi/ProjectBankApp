<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Add Branch</title>

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
           background-image: url('https://images.pexels.com/photos/45112/pexels-photo-45112.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');
           background-size: cover;
        } 
    </style>
     
</head>

<body>

     <div class="container">
    
         <div class="row">
         
              <div class="col m6 offset-m3">
              
                   <div class="card">
                   
                        <div class="card-action blue white-text">
                              <h3 style="margin-top:10px;" class="center-align">Add Branch</h3>
                        </div>
                   
                        <div class="card-content">
                        <div style="text-align:center;">
                             
                             <div class="form center-align"> 
                             
                                  <form action="AddBranchS" method="post" onsubmit="return validation()">
                                       <div class="input-field"> 
                                        
                                        <select name="bcode" id="bcode">
                                             <option value="">Select Bank</option>
                                             <c:forEach items="${bankList}" var="show">
                                                  <option value="${show.bankId}">${show.bankName}</option>
                                                  
                                             </c:forEach>
                                        </select>
                                        
                                        </div>  
                                        <br>
                                        <h6 class="left-align">Enter Branch Name</h6>
                                        <input type="text" name="brname" placeholder="Character between 3 to 30." id="name" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Branch Code</h6>
                                        <input type="text" name="brcode" placeholder="4 Digit number." id="code" autocomplete="off">
                                        
                                        <h6 class="left-align">Enter Branch Address</h6>
                                        <input type="text" name="braddress" placeholder="Character between 5 to 50." id="address" autocomplete="off">
                                        
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
    
    </div>
    
    <script type="text/javascript">
         function validation()
         {
        	 var bcode = document.getElementById('bcode').value;
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
        		 	alert("Branch Name must be of 3 to 30 characters.");
        		 	return false;
        		 }
        	 if(!isNaN(name))
        		 {
        		 	alert("Branch Name must consist character.");
        		 	return false;
        		 }
        	 if(isNaN(code))
    		 	{
    		 		alert("Branch Code can only be number.");
    		 		return false;
    		 	}
        	 if((code.length < 4) || (code.length > 4))
    			{
    		 		alert("Branch Code must be of 4 digit.");
    		 		return false;
    		 	}
        	 if((address.length < 5) || (address.length > 50))
    		 	{
    		 		alert("Branch Address must be of 5 to 50 characters.");
    		 		return false;
    		 	}
        	 if(bcode=="")
 		 		{
 		 			alert("Select Bank from DropDown Menu.");
 		 			return false;
 		 		}
         }
    </script>

</body>

</html>