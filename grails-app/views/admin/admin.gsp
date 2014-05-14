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

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
		
	</script>
	<script>
		$(document).ready(function() {

			var create = $('.toggleCreate');
			var show = $('.toggleShow');
			$(create).hide();
			$(show).hide();
			$(".button1").click(function() {
				$(".toggleCreate").toggle(300);
			});
			$(".button2").click(function() {
				$(".toggleShow").toggle(300);
			});
		});
	</script>
	<button class=button1>Create Event</button>
	<div class="toggleCreate">

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

	</div>

	<button class=button2>Show All Events</button>
	<div class="toggleShow">

			<table id="userDataTable">
				<tr>
					<th>Name</th>
					<th>Description</th>
					<th>Set Current Event</th>
					
				</tr>
				
<g:form controller="event" method="post">
				<g:each in="${allEvents}">
					<tr>
						<td>
							${it.title}
						</td>
						<td>
							${it.description}
						</td>
						<td>
						<g:radio name="currentEventRadio" value="${it.id}" checked="${it.currentEvent}" />
						</td>
					</tr>
				</g:each>
			</table>

		<g:actionSubmit value="setEvent" action="setEvent" />
	</g:form>



	</div>

</body>
</html>
