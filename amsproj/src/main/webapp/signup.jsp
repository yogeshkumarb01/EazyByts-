<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %>
<%@ page import="java.util.*" %>

<%@include file="component/allcss.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>

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
    var fullName = document.getElementById("fullname").value;
    var regex = /[0-9]/;
    if (regex.test(fullName)) {
        document.getElementById("error-msg").innerText = "Error: Full name should not contain numbers.";
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

                    <p class="fs-4 text-center">User Register</p>

                    <%-- Check if registration is successful and display success message --%>
                    <% if (request.getParameter("success") != null && request.getParameter("success").equals("true")) { %>
                        <div class="alert alert-success" role="alert">
                            Registration successful! You can now sign in.
                        </div>
                    <% } else if (request.getParameter("error") != null && request.getParameter("error").equals("true")) { %>
                        <div class="alert alert-danger" role="alert">
                            Error: Please check your input and try again.
                        </div>
                    <% } %>

                    <form action="user_register" method="post" onsubmit="return validateForm()">

                        <div class="mb-3">
                            <label class="form-Label">Full Name</label> 
                            <input required id="fullname" name="fullname" type="text" class="form-control">
                            <div id="error-msg" style="color: red;"></div> <!-- Display error message here -->
                        </div>

                        <div class="mb-3">
                            <label class="form-Label">Email address</label> 
                            <input required name="email" type="email" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-Label">Password</label> 
                            <input required name="password" type="password" class="form-control">
                        </div>

                        <button type="submit" class="btn bg-success text-white col-md-12">Register</button>

                    </form>

                    <br>  already have account? <a href="user_login.jsp" class="text-decoration-none">sign in</a>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>
