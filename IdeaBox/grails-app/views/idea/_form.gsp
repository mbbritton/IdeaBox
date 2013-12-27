<%@ page import="ideabox.Idea" %>



<div class="fieldcontain ${hasErrors(bean: ideaInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="idea.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${ideaInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ideaInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="idea.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${ideaInstance?.name}"/>
</div>

