
<%@ page import="com.tiem625.tankarena.model.tank.TankEngine" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tankEngine.label', default: 'TankEngine')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tankEngine" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tankEngine" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tankEngine">
			
				<g:if test="${tankEngineInstance?.acceleration}">
				<li class="fieldcontain">
					<span id="acceleration-label" class="property-label"><g:message code="tankEngine.acceleration.label" default="Acceleration" /></span>
					
						<span class="property-value" aria-labelledby="acceleration-label"><g:fieldValue bean="${tankEngineInstance}" field="acceleration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankEngineInstance?.deacceleration}">
				<li class="fieldcontain">
					<span id="deacceleration-label" class="property-label"><g:message code="tankEngine.deacceleration.label" default="Deacceleration" /></span>
					
						<span class="property-value" aria-labelledby="deacceleration-label"><g:fieldValue bean="${tankEngineInstance}" field="deacceleration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankEngineInstance?.idleSoundPath}">
				<li class="fieldcontain">
					<span id="idleSoundPath-label" class="property-label"><g:message code="tankEngine.idleSoundPath.label" default="Idle Sound Path" /></span>
					
						<span class="property-value" aria-labelledby="idleSoundPath-label"><g:fieldValue bean="${tankEngineInstance}" field="idleSoundPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankEngineInstance?.revvingSoundPath}">
				<li class="fieldcontain">
					<span id="revvingSoundPath-label" class="property-label"><g:message code="tankEngine.revvingSoundPath.label" default="Revving Sound Path" /></span>
					
						<span class="property-value" aria-labelledby="revvingSoundPath-label"><g:fieldValue bean="${tankEngineInstance}" field="revvingSoundPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankEngineInstance?.topSpeed}">
				<li class="fieldcontain">
					<span id="topSpeed-label" class="property-label"><g:message code="tankEngine.topSpeed.label" default="Top Speed" /></span>
					
						<span class="property-value" aria-labelledby="topSpeed-label"><g:fieldValue bean="${tankEngineInstance}" field="topSpeed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankEngineInstance?.torque}">
				<li class="fieldcontain">
					<span id="torque-label" class="property-label"><g:message code="tankEngine.torque.label" default="Torque" /></span>
					
						<span class="property-value" aria-labelledby="torque-label"><g:fieldValue bean="${tankEngineInstance}" field="torque"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tankEngineInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tankEngineInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
