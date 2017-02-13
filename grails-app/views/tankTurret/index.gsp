
<%@ page import="com.tiem625.tankarena.model.tank.TankTurret" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tankTurret.label', default: 'TankTurret')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tankTurret" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tankTurret" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="activeSprites" title="${message(code: 'tankTurret.activeSprites.label', default: 'Active Sprites')}" />
					
						<g:sortableColumn property="collisionBox" title="${message(code: 'tankTurret.collisionBox.label', default: 'Collision Box')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'tankTurret.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="entityKey" title="${message(code: 'tankTurret.entityKey.label', default: 'Entity Key')}" />
					
						<g:sortableColumn property="garageItemPath" title="${message(code: 'tankTurret.garageItemPath.label', default: 'Garage Item Path')}" />
					
						<g:sortableColumn property="mass" title="${message(code: 'tankTurret.mass.label', default: 'Mass')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tankTurretInstanceList}" status="i" var="tankTurretInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tankTurretInstance.id}">${fieldValue(bean: tankTurretInstance, field: "activeSprites")}</g:link></td>
					
						<td>${fieldValue(bean: tankTurretInstance, field: "collisionBox")}</td>
					
						<td>${fieldValue(bean: tankTurretInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: tankTurretInstance, field: "entityKey")}</td>
					
						<td>${fieldValue(bean: tankTurretInstance, field: "garageItemPath")}</td>
					
						<td>${fieldValue(bean: tankTurretInstance, field: "mass")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tankTurretInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
