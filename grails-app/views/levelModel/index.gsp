
<%@ page import="com.tiem625.tankarena.model.level.LevelModel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'levelModel.label', default: 'LevelModel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-levelModel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-levelModel" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'levelModel.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="entityKey" title="${message(code: 'levelModel.entityKey.label', default: 'Entity Key')}" />
					
						<g:sortableColumn property="mapPrefabPath" title="${message(code: 'levelModel.mapPrefabPath.label', default: 'Map Prefab Path')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'levelModel.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="placementPoint" title="${message(code: 'levelModel.placementPoint.label', default: 'Placement Point')}" />
					
						<g:sortableColumn property="playerSpawnPoint" title="${message(code: 'levelModel.playerSpawnPoint.label', default: 'Player Spawn Point')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${levelModelInstanceList}" status="i" var="levelModelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${levelModelInstance.id}">${fieldValue(bean: levelModelInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: levelModelInstance, field: "entityKey")}</td>
					
						<td>${fieldValue(bean: levelModelInstance, field: "mapPrefabPath")}</td>
					
						<td>${fieldValue(bean: levelModelInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: levelModelInstance, field: "placementPoint")}</td>
					
						<td>${fieldValue(bean: levelModelInstance, field: "playerSpawnPoint")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${levelModelInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
