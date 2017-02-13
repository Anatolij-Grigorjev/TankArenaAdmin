
<%@ page import="com.tiem625.tankarena.utils.SpawnerTemplate" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'spawnerTemplate.label', default: 'SpawnerTemplate')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-spawnerTemplate" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-spawnerTemplate" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list spawnerTemplate">
			
				<g:if test="${spawnerTemplateInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="spawnerTemplate.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${spawnerTemplateInstance?.entityKey}">
				<li class="fieldcontain">
					<span id="entityKey-label" class="property-label"><g:message code="spawnerTemplate.entityKey.label" default="Entity Key" /></span>
					
						<span class="property-value" aria-labelledby="entityKey-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="entityKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${spawnerTemplateInstance?.goPathsToProbs}">
				<li class="fieldcontain">
					<span id="goPathsToProbs-label" class="property-label"><g:message code="spawnerTemplate.goPathsToProbs.label" default="Go Paths To Probs" /></span>
					
						<span class="property-value" aria-labelledby="goPathsToProbs-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="goPathsToProbs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${spawnerTemplateInstance?.gracePeriod}">
				<li class="fieldcontain">
					<span id="gracePeriod-label" class="property-label"><g:message code="spawnerTemplate.gracePeriod.label" default="Grace Period" /></span>
					
						<span class="property-value" aria-labelledby="gracePeriod-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="gracePeriod"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${spawnerTemplateInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="spawnerTemplate.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${spawnerTemplateInstance?.simultaneous}">
				<li class="fieldcontain">
					<span id="simultaneous-label" class="property-label"><g:message code="spawnerTemplate.simultaneous.label" default="Simultaneous" /></span>
					
						<span class="property-value" aria-labelledby="simultaneous-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="simultaneous"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${spawnerTemplateInstance?.spawnPool}">
				<li class="fieldcontain">
					<span id="spawnPool-label" class="property-label"><g:message code="spawnerTemplate.spawnPool.label" default="Spawn Pool" /></span>
					
						<span class="property-value" aria-labelledby="spawnPool-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="spawnPool"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${spawnerTemplateInstance?.spreadMaxXY}">
				<li class="fieldcontain">
					<span id="spreadMaxXY-label" class="property-label"><g:message code="spawnerTemplate.spreadMaxXY.label" default="Spread Max XY" /></span>
					
						<span class="property-value" aria-labelledby="spreadMaxXY-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="spreadMaxXY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${spawnerTemplateInstance?.spreadMinXY}">
				<li class="fieldcontain">
					<span id="spreadMinXY-label" class="property-label"><g:message code="spawnerTemplate.spreadMinXY.label" default="Spread Min XY" /></span>
					
						<span class="property-value" aria-labelledby="spreadMinXY-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="spreadMinXY"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${spawnerTemplateInstance?.targetTag}">
				<li class="fieldcontain">
					<span id="targetTag-label" class="property-label"><g:message code="spawnerTemplate.targetTag.label" default="Target Tag" /></span>
					
						<span class="property-value" aria-labelledby="targetTag-label"><g:fieldValue bean="${spawnerTemplateInstance}" field="targetTag"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:spawnerTemplateInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${spawnerTemplateInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
