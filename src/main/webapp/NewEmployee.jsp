<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<style>



.fo{
margin-top:180px;
margin-bottom:0px;
}

label{
font-size:20px;}




</style>






 <link rel="stylesheet" href="css/bootstrap.min.css">
  
        <link rel="stylesheet" href="css/style.css">


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



</head>
<body>
 
   <header style="background-color:#5bc0de;">
           
        <div id="header">
          
        <nav class="navbar navbar-expand-md navbar-light navbar-expand-md " >
         
            
            <a class="navbar-brand" href="/"> Employee List
           
              
           
           </a>
           
           
           
      
           
           
                
                
                
            </nav>
        </div>
            
        
        </header>
   
  <div class="container mt-5 mb-5">

  <div class="row">
  <div class="col-md-6 mx-auto">
  
  <div class="card p-3">
  <div class="card-body">
  
  <form action="AddEmployee" method="post" >
  
  <label style="font-weight:bold; font-size:28px; text-align:center;">Add Employee</label> <br>
  <label for="Email">Email</label>
  
  <div class="form-group">
  <input type="email" class="form-control" placeholder="email"  name="email" id="Email">
 </div>
 
  <label for="FirstName">FirstName</label>
  
  <div class="form-group">
  <input type="text" class="form-control" placeholder="firstname" name="firstName" id="FirstName">
 </div>
 
  <label for="LastName">LastName</label>
  
  <div class="form-group">
  <input type="text" class="form-control" name="lastName" placeholder="LastName"  id="LastName">
  </div>
  
  <div class="form-group">
  <input type="submit" name="sub" value="submit" class="btn btn-primary bn-lg">
  
  </div>
  </form>
  
  </div>
  </div>
  
  </div>
  </div> 
  
  </div>
  
  
<footer class="fo" style="padding-top:2%; margin-bottom:0px; padding-bottom:4px; border-top:2px solid black;border-bottom:2px solid black; background-color:#5bc0de;">
            <div class="container-fluid" >
               
               
                    
                    <div class="row">
                     <div class="col-12 align-content-center">
                        <h6 class="pb-1 mb-2">Muhammad Ahsan 2020 © All Rights Reserved.</h6>
                     </div>
                        
                    </div>
                    
                  
                
                
                
                
            </div>
            
            
            
            
            
        </footer>


 <script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>