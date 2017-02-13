
<%@ page import="com.tiem625.tankarena.model.level.LevelModel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'levelModel.label', default: 'LevelModel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-levelModel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-levelModel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list levelModel">
			
				<g:if test="${levelModelInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="levelModel.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${levelModelInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.enemyTypes}">
				<li class="fieldcontain">
					<span id="enemyTypes-label" class="property-label"><g:message code="levelModel.enemyTypes.label" default="Enemy Types" /></span>
					
						<span class="property-value" aria-labelledby="enemyTypes-label"><g:fieldValue bean="${levelModelInstance}" field="enemyTypes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.entityKey}">
				<li class="fieldcontain">
					<span id="entityKey-label" class="property-label"><g:message code="levelModel.entityKey.label" default="Entity Key" /></span>
					
						<span class="property-value" aria-labelledby="entityKey-label"><g:fieldValue bean="${levelModelInstance}" field="entityKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.mapPrefabPath}">
				<li class="fieldcontain">
					<span id="mapPrefabPath-label" class="property-label"><g:message code="levelModel.mapPrefabPath.label" default="Map Prefab Path" /></span>
					
						<span class="property-value" aria-labelledby="mapPrefabPath-label"><g:fieldValue bean="${levelModelInstance}" field="mapPrefabPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="levelModel.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${levelModelInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.placementPoint}">
				<li class="fieldcontain">
					<span id="placementPoint-label" class="property-label"><g:message code="levelModel.placementPoint.label" default="Placement Point" /></span>
					
						<span class="property-value" aria-labelledby="placementPoint-label"><g:fieldValue bean="${levelModelInstance}" field="placementPoint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.playerSpawnPoint}">
				<li class="fieldcontain">
					<span id="playerSpawnPoint-label" class="property-label"><g:message code="levelModel.playerSpawnPoint.label" default="Player Spawn Point" /></span>
					
						<span class="property-value" aria-labelledby="playerSpawnPoint-label"><g:fieldValue bean="${levelModelInstance}" field="playerSpawnPoint"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.snapshotPath}">
				<li class="fieldcontain">
					<span id="snapshotPath-label" class="property-label"><g:message code="levelModel.snapshotPath.label" default="Snapshot Path" /></span>
					
						<span class="property-value" aria-labelledby="snapshotPath-label"><g:fieldValue bean="${levelModelInstance}" field="snapshotPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.spawnerIdsToLoacations}">
				<li class="fieldcontain">
					<span id="spawnerIdsToLoacations-label" class="property-label"><g:message code="levelModel.spawnerIdsToLoacations.label" default="Spawner Ids To Loacations" /></span>
					
						<span class="property-value" aria-labelledby="spawnerIdsToLoacations-label"><g:fieldValue bean="${levelModelInstance}" field="spawnerIdsToLoacations"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.thumbnailPath}">
				<li class="fieldcontain">
					<span id="thumbnailPath-label" class="property-label"><g:message code="levelModel.thumbnailPath.label" default="Thumbnail Path" /></span>
					
						<span class="property-value" aria-labelledby="thumbnailPath-label"><g:fieldValue bean="${levelModelInstance}" field="thumbnailPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${levelModelInstance?.totalEnemies}">
				<li class="fieldcontain">
					<span id="totalEnemies-label" class="property-label"><g:message code="levelModel.totalEnemies.label" default="Total Enemies" /></span>
					
						<span class="property-value" aria-labelledby="totalEnemies-label"><g:fieldValue bean="${levelModelInstance}" field="totalEnemies"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:levelModelInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${levelModelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
