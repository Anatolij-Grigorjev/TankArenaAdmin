
<%@ page import="com.tiem625.tankarena.model.tank.TankEngine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tankEngine.label', default: 'TankEngine')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tankEngine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tankEngine" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="acceleration" title="${message(code: 'tankEngine.acceleration.label', default: 'Acceleration')}" />
					
						<g:sortableColumn property="deacceleration" title="${message(code: 'tankEngine.deacceleration.label', default: 'Deacceleration')}" />
					
						<g:sortableColumn property="idleSoundPath" title="${message(code: 'tankEngine.idleSoundPath.label', default: 'Idle Sound Path')}" />
					
						<g:sortableColumn property="revvingSoundPath" title="${message(code: 'tankEngine.revvingSoundPath.label', default: 'Revving Sound Path')}" />
					
						<g:sortableColumn property="topSpeed" title="${message(code: 'tankEngine.topSpeed.label', default: 'Top Speed')}" />
					
						<g:sortableColumn property="torque" title="${message(code: 'tankEngine.torque.label', default: 'Torque')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tankEngineInstanceList}" status="i" var="tankEngineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tankEngineInstance.id}">${fieldValue(bean: tankEngineInstance, field: "acceleration")}</g:link></td>
					
						<td>${fieldValue(bean: tankEngineInstance, field: "deacceleration")}</td>
					
						<td>${fieldValue(bean: tankEngineInstance, field: "idleSoundPath")}</td>
					
						<td>${fieldValue(bean: tankEngineInstance, field: "revvingSoundPath")}</td>
					
						<td>${fieldValue(bean: tankEngineInstance, field: "topSpeed")}</td>
					
						<td>${fieldValue(bean: tankEngineInstance, field: "torque")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tankEngineInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
