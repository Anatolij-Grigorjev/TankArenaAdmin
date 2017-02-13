
<%@ page import="com.tiem625.tankarena.model.tank.TankChassis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tankChassis.label', default: 'TankChassis')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tankChassis" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tankChassis" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="activeSprites" title="${message(code: 'tankChassis.activeSprites.label', default: 'Active Sprites')}" />
					
						<g:sortableColumn property="collisionBox" title="${message(code: 'tankChassis.collisionBox.label', default: 'Collision Box')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'tankChassis.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="entityKey" title="${message(code: 'tankChassis.entityKey.label', default: 'Entity Key')}" />
					
						<g:sortableColumn property="garageItemPath" title="${message(code: 'tankChassis.garageItemPath.label', default: 'Garage Item Path')}" />
					
						<g:sortableColumn property="integrity" title="${message(code: 'tankChassis.integrity.label', default: 'Integrity')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tankChassisInstanceList}" status="i" var="tankChassisInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tankChassisInstance.id}">${fieldValue(bean: tankChassisInstance, field: "activeSprites")}</g:link></td>
					
						<td>${fieldValue(bean: tankChassisInstance, field: "collisionBox")}</td>
					
						<td>${fieldValue(bean: tankChassisInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: tankChassisInstance, field: "entityKey")}</td>
					
						<td>${fieldValue(bean: tankChassisInstance, field: "garageItemPath")}</td>
					
						<td>${fieldValue(bean: tankChassisInstance, field: "integrity")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tankChassisInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
