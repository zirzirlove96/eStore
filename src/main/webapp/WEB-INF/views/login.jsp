<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container-wrapper">
	<div class="container">
		<h2>Login username and password</h2>
		
		<c:if test="${not empty errorMsg }">
		<div style="color:#ff0000;"><h3>${errorMsg}</h3></div>
		</c:if>
		
		<c:if test="${not empty logoutMsg }">
		<div style="color:#ff0000;"><h3>${logoutMsg}</h3></div>
		</c:if>
		
		<form action="<c:url value="/login"/>" method="post">
			<div class="form-group">
				<label for="username">UserName:</label> 
				<input type="text" class="form-control" id="username" placeholder="Enter username"
					name="username">
			</div>

			<div class="form-group">
				<label for="pwd">Password:</label> 
				<input type="password" class="form-control" id="pwd" placeholder="Enter password"
					name="password">
			</div>

			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />


			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</div>