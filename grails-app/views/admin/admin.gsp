<%@ page import="heritagetrail.Entry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entry.label', default: 'Entry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<g:form>
			<g:textField name="viewProfile"/>
			<g:actionSubmit value="Find User"/>
		</g:form>
		<br>
		<g:form>
			<g:actionSubmit value="Reset Event"/>
		</g:form>
		<br>
		<g:form id="userMessage">
			<g:textArea name="message"></g:textArea>
			<g:actionSubmit value="Send Message"/>
		
		</g:form>
		<br>
		
		<div class="showStats" method="Get">
			<g:form action="userDataExample">
			 <g:select name="statList" from="${1..10}"/>
			 <g:actionSubmit value="Get Stats"/>
			</g:form>
			Here is where we pull in all the stats divided up by each age group<br>
			This Will be an AJAX call. Your welcome Branden.
		
		
		</div>
		
	</body>
</html>
