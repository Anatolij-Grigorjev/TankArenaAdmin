<%@ page import="com.tiem625.tankarena.model.level.LevelModel" %>



<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="levelModel.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${levelModelInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'enemyTypes', 'error')} ">
	<label for="enemyTypes">
		<g:message code="levelModel.enemyTypes.label" default="Enemy Types" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'entityKey', 'error')} ">
	<label for="entityKey">
		<g:message code="levelModel.entityKey.label" default="Entity Key" />
		
	</label>
	<g:textField name="entityKey" value="${levelModelInstance?.entityKey}" />

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'mapPrefabPath', 'error')} ">
	<label for="mapPrefabPath">
		<g:message code="levelModel.mapPrefabPath.label" default="Map Prefab Path" />
		
	</label>
	<g:textField name="mapPrefabPath" value="${levelModelInstance?.mapPrefabPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="levelModel.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${levelModelInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'placementPoint', 'error')} ">
	<label for="placementPoint">
		<g:message code="levelModel.placementPoint.label" default="Placement Point" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'playerSpawnPoint', 'error')} ">
	<label for="playerSpawnPoint">
		<g:message code="levelModel.playerSpawnPoint.label" default="Player Spawn Point" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'snapshotPath', 'error')} ">
	<label for="snapshotPath">
		<g:message code="levelModel.snapshotPath.label" default="Snapshot Path" />
		
	</label>
	<g:textField name="snapshotPath" value="${levelModelInstance?.snapshotPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'spawnerIdsToLoacations', 'error')} ">
	<label for="spawnerIdsToLoacations">
		<g:message code="levelModel.spawnerIdsToLoacations.label" default="Spawner Ids To Loacations" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'thumbnailPath', 'error')} ">
	<label for="thumbnailPath">
		<g:message code="levelModel.thumbnailPath.label" default="Thumbnail Path" />
		
	</label>
	<g:textField name="thumbnailPath" value="${levelModelInstance?.thumbnailPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: levelModelInstance, field: 'totalEnemies', 'error')} ">
	<label for="totalEnemies">
		<g:message code="levelModel.totalEnemies.label" default="Total Enemies" />
		
	</label>
	<g:field type="number" name="totalEnemies" value="${levelModelInstance.totalEnemies}" />

</div>

