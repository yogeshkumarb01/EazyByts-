<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin login page</title>
<%@include file="component/allcss.jsp" %>

<style type="text/css">
.paint-card {
    box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.alert {
    padding: 0.75rem 1.25rem;
    margin-bottom: 1rem;
    border: 1px solid transparent;
    border-radius: 0.25rem;
}

/* Define the alert-success class */
.alert-success {
    color: #155724;
    background-color: #d4edda;
    border-color: #c3e6cb;
}

.alert-danger {
    color: #721c24;
    background-color: #f8d7da;
    border-color: #f5c6cb;
}

</style>

<script>
function validateForm() {
    var email = document.getElementById("email").value;
    var regex = /[0-9]/;
    if (regex.test(email)) {
        document.getElementById("error-msg").innerText = "Error: email should not contain numbers.";
        return false; // Prevent form submission
    }
    return true; // Allow form submission
}
</script>

</head>
<body>
<%@include file="component/navbar.jsp" %>

<div class="container p-5">

    <div class="row">

        <div class="col-md-4 offset-md-4"> 
            <div class="card paint-card">

                <div class="card-body">

                    <p class="fs-4 text-center">Admin Login</p>
                    
                    
           
                    
                    
                      <c:if test="${not empty errorMsg}">
                      <p class="text-center text danger fs-5">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                            
                        
                    </c:if>
                    <c:if test="${not empty succMsg}">
                        <p class="text-center text-success fs-3">${succMsg}</p>
                         <c:remove var="succMsg" scope="session"/>
                           
                    </c:if>
   
                    
                    
                    
                    <%-- Check if login is successful and display success message --%>
                    <% if (request.getAttribute("errorMessage") != null) { %>
                        <div class="alert alert-danger" role="alert">
                            <%= request.getAttribute("errorMessage") %>
                        </div>
                    <% } %>
                    
                    <form action="adminLogin" method="post" onsubmit="return validateForm()">

                        <div class="mb-3">
                            <label class="form-Label">Email address</label> 
                            <input required name="email" id="email" type="email" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-Label">Password</label> 
                            <input required name="password" type="password" class="form-control">
                        </div>

                        <button type="submit" class="btn bg-success text-white col-md-12">Login</button>

                    </form>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>
