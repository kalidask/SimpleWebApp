<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
    <jsp:useBean id="controller" class="org.o7planning.tutorial.keycloak.Controller" scope="request"/>
    
    <c:set var="idToken" value="<%=controller.getIDToken(request)%>"/>
<c:set var="tokenString" value="<%=controller.getTokenString(request)%>"/>
<c:set var="showToken" value="<%=controller.showToken(request)%>"/>
    
 
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>User Info</title>
 </head>
 <body>
 
    <jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu1.jsp"></jsp:include>
 
    <h3>Hello: ${idToken.preferredUsername}</h3>
 
    User Name: <b>${idToken.preferredUsername}</b>
    <br />
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>