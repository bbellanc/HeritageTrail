<%@ page import="heritagetrail.Admin" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
	</head>
	<body>
		
		<g:form controller="admin" method="post">
			<g:textField class='searchBar' name='value'/>
			<g:actionSubmit value="Find User" action="getProfile"/>	
		</g:form>
		
		<g:if test="${user != null}"> 
			<table id="userDataTable">
				
				<tr><th>First Name</th>
				<th>Last Name</th>
				<th>Username</th>
				<th>Email</th>
				<th>Points</th></tr>
				<g:each in="${user}">
				<tr><td>${it.firstName}</td>
				<td>${it.lastName}</td>
				<td>${it.login}</td>
				<td><a href="mailto:${it.email}">${it.email}</a></td>
				<td>${it.points}</td></tr>
					
				
				</g:each>
			</table>
		</g:if>
		
		
	</body>
</html>
