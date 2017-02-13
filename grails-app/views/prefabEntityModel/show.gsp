
<%@ page import="com.tiem625.tankarena.model.PrefabEntityModel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prefabEntityModel.label', default: 'PrefabEntityModel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-prefabEntityModel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-prefabEntityModel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list prefabEntityModel">
			
				<g:if test="${prefabEntityModelInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="prefabEntityModel.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${prefabEntityModelInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prefabEntityModelInstance?.entityKey}">
				<li class="fieldcontain">
					<span id="entityKey-label" class="property-label"><g:message code="prefabEntityModel.entityKey.label" default="Entity Key" /></span>
					
						<span class="property-value" aria-labelledby="entityKey-label"><g:fieldValue bean="${prefabEntityModelInstance}" field="entityKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prefabEntityModelInstance?.entityPrefabPath}">
				<li class="fieldcontain">
					<span id="entityPrefabPath-label" class="property-label"><g:message code="prefabEntityModel.entityPrefabPath.label" default="Entity Prefab Path" /></span>
					
						<span class="property-value" aria-labelledby="entityPrefabPath-label"><g:fieldValue bean="${prefabEntityModelInstance}" field="entityPrefabPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prefabEntityModelInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="prefabEntityModel.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${prefabEntityModelInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:prefabEntityModelInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${prefabEntityModelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
