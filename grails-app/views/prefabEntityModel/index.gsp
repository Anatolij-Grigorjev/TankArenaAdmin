
<%@ page import="com.tiem625.tankarena.model.PrefabEntityModel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prefabEntityModel.label', default: 'PrefabEntityModel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prefabEntityModel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prefabEntityModel" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'prefabEntityModel.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="entityKey" title="${message(code: 'prefabEntityModel.entityKey.label', default: 'Entity Key')}" />
					
						<g:sortableColumn property="entityPrefabPath" title="${message(code: 'prefabEntityModel.entityPrefabPath.label', default: 'Entity Prefab Path')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'prefabEntityModel.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${prefabEntityModelInstanceList}" status="i" var="prefabEntityModelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${prefabEntityModelInstance.id}">${fieldValue(bean: prefabEntityModelInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: prefabEntityModelInstance, field: "entityKey")}</td>
					
						<td>${fieldValue(bean: prefabEntityModelInstance, field: "entityPrefabPath")}</td>
					
						<td>${fieldValue(bean: prefabEntityModelInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${prefabEntityModelInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
