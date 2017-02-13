
<%@ page import="com.tiem625.tankarena.model.character.PlayableCharacter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'playableCharacter.label', default: 'PlayableCharacter')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-playableCharacter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-playableCharacter" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list playableCharacter">
			
				<g:if test="${playableCharacterInstance?.avatarPath}">
				<li class="fieldcontain">
					<span id="avatarPath-label" class="property-label"><g:message code="playableCharacter.avatarPath.label" default="Avatar Path" /></span>
					
						<span class="property-value" aria-labelledby="avatarPath-label"><g:fieldValue bean="${playableCharacterInstance}" field="avatarPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playableCharacterInstance?.backgroundPath}">
				<li class="fieldcontain">
					<span id="backgroundPath-label" class="property-label"><g:message code="playableCharacter.backgroundPath.label" default="Background Path" /></span>
					
						<span class="property-value" aria-labelledby="backgroundPath-label"><g:fieldValue bean="${playableCharacterInstance}" field="backgroundPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playableCharacterInstance?.characterModelPath}">
				<li class="fieldcontain">
					<span id="characterModelPath-label" class="property-label"><g:message code="playableCharacter.characterModelPath.label" default="Character Model Path" /></span>
					
						<span class="property-value" aria-labelledby="characterModelPath-label"><g:fieldValue bean="${playableCharacterInstance}" field="characterModelPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playableCharacterInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="playableCharacter.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${playableCharacterInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playableCharacterInstance?.entityKey}">
				<li class="fieldcontain">
					<span id="entityKey-label" class="property-label"><g:message code="playableCharacter.entityKey.label" default="Entity Key" /></span>
					
						<span class="property-value" aria-labelledby="entityKey-label"><g:fieldValue bean="${playableCharacterInstance}" field="entityKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playableCharacterInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="playableCharacter.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${playableCharacterInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playableCharacterInstance?.startingCash}">
				<li class="fieldcontain">
					<span id="startingCash-label" class="property-label"><g:message code="playableCharacter.startingCash.label" default="Starting Cash" /></span>
					
						<span class="property-value" aria-labelledby="startingCash-label"><g:fieldValue bean="${playableCharacterInstance}" field="startingCash"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playableCharacterInstance?.startingHealth}">
				<li class="fieldcontain">
					<span id="startingHealth-label" class="property-label"><g:message code="playableCharacter.startingHealth.label" default="Starting Health" /></span>
					
						<span class="property-value" aria-labelledby="startingHealth-label"><g:fieldValue bean="${playableCharacterInstance}" field="startingHealth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playableCharacterInstance?.startingTankCode}">
				<li class="fieldcontain">
					<span id="startingTankCode-label" class="property-label"><g:message code="playableCharacter.startingTankCode.label" default="Starting Tank Code" /></span>
					
						<span class="property-value" aria-labelledby="startingTankCode-label"><g:fieldValue bean="${playableCharacterInstance}" field="startingTankCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:playableCharacterInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${playableCharacterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
