
<%@ page import="ideabox.Idea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'idea.label', default: 'Idea')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-idea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<sec:ifLoggedIn>
				    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</sec:ifLoggedIn>    
			</ul>
		</div>
		<div id="show-idea" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list idea">
			
				<g:if test="${ideaInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="idea.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${ideaInstance}" field="name"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${ideaInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="idea.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${ideaInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
			
			</ol>
			<g:form>
				<sec:ifLoggedIn>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ideaInstance?.id}" />
					<g:link class="edit" action="edit" id="${ideaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
				</sec:ifLoggedIn>
			</g:form>
		</div>
	</body>
</html>
