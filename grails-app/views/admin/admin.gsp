<%@ page import="heritagetrail.Admin"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
</head>
<body>

	<h3>Find a User</h3>
	<br />
	<g:form controller="admin" method="post">
		<g:textField class='searchBar' name='value' />
		<g:actionSubmit value="Find User" action="getProfile" />
	</g:form>
	<br />

	<g:if test="${user != null}">
		<table id="userDataTable">
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Username</th>
				<th>Email</th>
				<th>Points</th>
			</tr>
			<g:each in="${user}">
				<tr>
					<td>
						${it.firstName}
					</td>
					<td>
						${it.lastName}
					</td>
					<td>
						${it.login}
					</td>
					<td><a href="mailto:${it.email}"> ${it.email}
					</a></td>
					<td>
						${it.points}
					</td>
				</tr>
			</g:each>
		</table>
	</g:if>

	<br />
	<h3>Create an Event</h3>

	<g:form controller="event" method="post">
		<br />
		<p>Title</p>
		<g:textField name='title' />
		<br />
		<br />

		<p>Description</p>
		<g:textArea name='description' />
		<br>
		<br>
		<input type="checkbox" name="currentEvent" value="currentEvent"> Is this the current event? (This will reset all current event points for the users)<br>
		<br>
		<g:actionSubmit value="Create" action="createEvent" />
	</g:form>

</body>
</html>
