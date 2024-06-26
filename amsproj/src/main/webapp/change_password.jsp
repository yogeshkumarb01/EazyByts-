<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="com.dao.SpecialistDao, com.entity.Specialist, 
com.db.DBConnect, com.dao.AppointmentDao, com.dao.DoctorDao,
 com.entity.Appointment, com.entity.Doctor, java.util.List, com.entity.User" %>
 
<!DOCTYPE html>
<html>
<head>
    <title>Change Password Page</title>
      <%@ include file="component/allcss.jsp"%>
    <style type="text/css">
        .paint-card {
            box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <!-- Including navbar component -->
    <%@ include file="component/navbar.jsp" %>
    
    <c:if test="${empty userObj}">
    <c:redirect url="user_login.jsp"></c:redirect>
    </c:if>

    <div class="container p-4">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card paint-card"> <!-- Added the paint-card class -->
                    <p class="text-center fs-3">Change Password</p>
                    <div class="card-body">
                    
                    <c:if test="${not empty succMsg}">
                        <p class="text-center text-success fs-3">${succMsg}</p>
                         <c:remove var="succMsg" scope="session"/>
                           
                    </c:if>
                    
                      <c:if test="${not empty errorMsg}">
                      <p class="text-center text danger fs-5">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                            
                        
                    </c:if>
                    
                    
                    
                        <form action = "userChangePassword" method = "post">
                            <div class="mb-3">
                                <label>Enter New Password</label> 
                                <input type="text" name="newPassword" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label>Enter Old Password</label> 
                                <input type="text" name="oldPassword" class="form-control" required>
                            </div>
                            <input type="hidden" value="${userObj.id}" name="uid">
                            <button type="submit" class="btn btn-success col-md-12">Change Password</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
