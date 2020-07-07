<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>






<style>

table,tr,td{
border:none;
border-collapse: collapse;
outline:none;
}

td {
border: none;
text-align: left;
padding: 25px;
}

th {
border: none;
text-align: left;
padding: 25px;}

tr {
border: none;
text-align: left;
padding: 25px;}

.bo {
border: none;
text-align: left;
padding: 30px;}


.idlabel{
margin-right:80px;
padding-right:80px;
}

.idlab{
margin-right:70px;
padding-right:70px;
}

.deletebutton{
  font: bold 11px Arial;
  text-decoration: none;
  background-color: red;
  color: #333333;
  padding: 2px 6px 2px 6px;
  border-top: 1px solid #CCCCCC;
  border-right: 1px solid #333333;
  border-bottom: 1px solid #333333;
  border-left: 1px solid #CCCCCC;}
  
  .addbutton{
  
  margin-left:300px;
  }



</style>


 <link rel="stylesheet" href="css/bootstrap.min.css">
  
        <link rel="stylesheet" href="css/style.css">




</head>



<body style="background-color:white;">
 
  
  
     <header style="background-color:#5bc0de;">
           
        <div id="header">
          
        <nav class="navbar navbar-expand-md navbar-light navbar-expand-md " >
         
            
            <a class="navbar-brand" href="/"> Employee List
           
              
           
           </a>
           
           
           
           <a href="<c:url value='/NewEmployee' />" >Add Employee</a>
           
           
                
                
                
                
            </nav>
        </div>
            
        
        </header>
        
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  <div class="container mt-4 mb-4">
  
  <div class="row">
  <div class="col-md-12 col-lg-10 mx-auto">
  
  
  <div class="card">
  <div class="card-body">
  
  <label style="font-weight:bold; font-size:28px;">Employee List</label>
  

   <div > <!-- style="border: 1px solid black" -->
   
   <table border="0" style="border: none; border-collapse:collapse; border-top-width: 0px; border-top-style: none;">

    <tr class="text-center" style="border: none; border-collapse:collapse; border-top-width: 0px; border-top-style: none;">
     <th class="text-center" border="0" style="border: none; border-collapse:collapse; border-top-width: 0px; border-top-style: none;">Id</th>
     <th class="text-center" border="0" style="border: none; border-collapse:collapse; border-top-width: 0px; border-top-style: none;">Email</th>
     <th class="text-center" border="0" style="border: none; border-collapse:collapse; border-top-width: 0px; border-top-style: none;">FirstName</th>
     <th class="text-center" border="0" style="border: none; border-collapse:collapse; border-top-width: 0px; border-top-style: none;">LastName</th>
     <th class="lastcolumn text-center" border="0" style="border: none; border-collapse:collapse; border-top-width: 0px; border-top-style: none;">Action</th>
    </tr>
   
   
 
<c:forEach var="Employees" items="${users}">

      <tr>
      <td>${Employees.id}</td>
      <td>${Employees.email}</td>
      <td>${Employees.firstName}</td>
      <td class="lastcolumn">${Employees.lastName}</td>
      
     
     <td ><a href="<c:url value='/DeleteEmployees/${Employees.id}' />" ><button type="button" class ="btn btn-danger">Delete</button></a>
         <a href="<c:url value='/UpdateEmployee/${Employees.id}' />" ><button type="button" class ="btn btn-info"> Update</button></a></td>
    
           </tr>
          
</c:forEach>
    

   
   </table>
   </br>
   <a href="<c:url value='/NewEmployee' />" ><button type="button" style="text-align:center;" class ="btn btn-info align-center addbutton">Add Employee</button></a>
   
   </div>
   
   
   </div>
   
   </div>
   
   </div>
   </div>
   
  </div>
  
  
  
  
        
        
           <footer style="margin-bottom:0px; margin-top:4px; padding-top:2%; padding-bottom:4px; border-top:2px solid black; background-color:#5bc0de;">
            <div class="container-fluid" >
               
               
                    
                    <div class="row">
                     <div class="col-12 align-content-center">
                        <h6 class="pb-1 mb-2">Muhammad Ahsan 2020 © All Rights Reserved.</h6>
                     </div>
                        
                    </div>
                    
                  
                
                
                
                
            </div>
            
            
            
            
            
        </footer>


  
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script type="text/javascript" src="JS/bootstrap.min.js"></script>
</body>

</html>