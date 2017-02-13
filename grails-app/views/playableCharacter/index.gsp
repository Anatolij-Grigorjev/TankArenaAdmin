
<%@ page import="com.tiem625.tankarena.model.character.PlayableCharacter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'playableCharacter.label', default: 'PlayableCharacter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-playableCharacter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-playableCharacter" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="avatarPath" title="${message(code: 'playableCharacter.avatarPath.label', default: 'Avatar Path')}" />
					
						<g:sortableColumn property="backgroundPath" title="${message(code: 'playableCharacter.backgroundPath.label', default: 'Background Path')}" />
					
						<g:sortableColumn property="characterModelPath" title="${message(code: 'playableCharacter.characterModelPath.label', default: 'Character Model Path')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'playableCharacter.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="entityKey" title="${message(code: 'playableCharacter.entityKey.label', default: 'Entity Key')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'playableCharacter.name.label', default: 'Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${playableCharacterInstanceList}" status="i" var="playableCharacterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${playableCharacterInstance.id}">${fieldValue(bean: playableCharacterInstance, field: "avatarPath")}</g:link></td>
					
						<td>${fieldValue(bean: playableCharacterInstance, field: "backgroundPath")}</td>
					
						<td>${fieldValue(bean: playableCharacterInstance, field: "characterModelPath")}</td>
					
						<td>${fieldValue(bean: playableCharacterInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: playableCharacterInstance, field: "entityKey")}</td>
					
						<td>${fieldValue(bean: playableCharacterInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${playableCharacterInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
