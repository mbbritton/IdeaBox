
<%@ page import="ideabox.Idea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'idea.label', default: 'Idea')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-idea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<sec:ifLoggedIn>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</sec:ifLoggedIn>
			</ul>
		</div>
		<div id="list-idea" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'idea.name.label', default: 'Name')}" />

						<g:sortableColumn property="description" title="${message(code: 'idea.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="status" title="${message(code: 'idea.status.label', default: 'Status')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${ideaInstanceList}" status="i" var="ideaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${ideaInstance.id}">${fieldValue(bean: ideaInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: ideaInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: ideaInstance, field: "status")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${ideaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
