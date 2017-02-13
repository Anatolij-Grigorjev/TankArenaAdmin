
<%@ page import="com.tiem625.tankarena.model.tank.TankTracks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tankTracks.label', default: 'TankTracks')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tankTracks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tankTracks" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="activeSprites" title="${message(code: 'tankTracks.activeSprites.label', default: 'Active Sprites')}" />
					
						<g:sortableColumn property="collisionBox" title="${message(code: 'tankTracks.collisionBox.label', default: 'Collision Box')}" />
					
						<g:sortableColumn property="coupling" title="${message(code: 'tankTracks.coupling.label', default: 'Coupling')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'tankTracks.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="entityKey" title="${message(code: 'tankTracks.entityKey.label', default: 'Entity Key')}" />
					
						<g:sortableColumn property="garageItemPath" title="${message(code: 'tankTracks.garageItemPath.label', default: 'Garage Item Path')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tankTracksInstanceList}" status="i" var="tankTracksInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tankTracksInstance.id}">${fieldValue(bean: tankTracksInstance, field: "activeSprites")}</g:link></td>
					
						<td>${fieldValue(bean: tankTracksInstance, field: "collisionBox")}</td>
					
						<td>${fieldValue(bean: tankTracksInstance, field: "coupling")}</td>
					
						<td>${fieldValue(bean: tankTracksInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: tankTracksInstance, field: "entityKey")}</td>
					
						<td>${fieldValue(bean: tankTracksInstance, field: "garageItemPath")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tankTracksInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
