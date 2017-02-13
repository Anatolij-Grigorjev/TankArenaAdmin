
<%@ page import="com.tiem625.tankarena.utils.SpawnerTemplate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'spawnerTemplate.label', default: 'SpawnerTemplate')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-spawnerTemplate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-spawnerTemplate" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'spawnerTemplate.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="entityKey" title="${message(code: 'spawnerTemplate.entityKey.label', default: 'Entity Key')}" />
					
						<g:sortableColumn property="goPathsToProbs" title="${message(code: 'spawnerTemplate.goPathsToProbs.label', default: 'Go Paths To Probs')}" />
					
						<g:sortableColumn property="gracePeriod" title="${message(code: 'spawnerTemplate.gracePeriod.label', default: 'Grace Period')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'spawnerTemplate.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="simultaneous" title="${message(code: 'spawnerTemplate.simultaneous.label', default: 'Simultaneous')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${spawnerTemplateInstanceList}" status="i" var="spawnerTemplateInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${spawnerTemplateInstance.id}">${fieldValue(bean: spawnerTemplateInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: spawnerTemplateInstance, field: "entityKey")}</td>
					
						<td>${fieldValue(bean: spawnerTemplateInstance, field: "goPathsToProbs")}</td>
					
						<td>${fieldValue(bean: spawnerTemplateInstance, field: "gracePeriod")}</td>
					
						<td>${fieldValue(bean: spawnerTemplateInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: spawnerTemplateInstance, field: "simultaneous")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${spawnerTemplateInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
