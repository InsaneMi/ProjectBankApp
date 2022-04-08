<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>

    <meta charset="ISO-8859-1">
    <title>Showing All Customer</title>
    
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    <style>
        body{
           background-color: #36013f;
        }
    </style>
    
</head>

<body>

    <div class="container">
    
         <div class="row">
         
              <div class="col m10 offset-m1">
              
                   <div class="card">
                        
                        <div class="card-action purple white-text">
                              <h3 style="margin-top:10px;" class="center-align">Showing All Customer</h3>
                        </div>
                        
                        <div class="card-content">
                             
                             <div class="form center-align">
        
                                 <table class="striped">
                                   <thead>
                                     <tr>
                                         <th>Name</th>
                                         <th>Account No.</th>
                                         <th>Balance</th>
                                         <th>Card No.</th>
                                         <th>Expiry Date</th>
                                         <th>Actions</th>
                                     </tr>
                                   </thead>
                                   <tbody>
             
                                     <c:forEach items="${custList}" var="show">
                                         <tr>
                                             <td><c:out value="${show.name}"></c:out></td>
                                             <td><c:out value="${show.accNo}"></c:out></td>
                                             <td><c:out value="${show.balance}"></c:out></td>
                                             <td><c:out value="${show.cardNo}"></c:out></td>
                                             <td><c:out value="${show.expDate}"></c:out></td>
                                             <td>
                                                <form action="editCustomer.jsp" method="post">
                                                     <input type="hidden" name="name" value="${show.name}">
                                                     <input type="hidden" name="accno" value="${show.accNo}">
                                                     <button type="submit" class="btn green lighten-2">Edit</button>
                                                </form>
                                                
                                                <form action="deleteCustomer.jsp" method="post">
                                                     <input type="hidden" name="name" value="${show.name}">
                                                     <input type="hidden" name="accno" value="${show.accNo}">
                                                     <button type="submit" class="btn red lighten-2">Delete</button>
                                                </form>
                                             </td>
                                         </tr>
             
                                     </c:forEach>
                                   </tbody>
                                 </table>
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

</body>

</html>