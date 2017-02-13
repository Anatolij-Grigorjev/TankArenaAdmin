<%@ page import="com.tiem625.tankarena.model.PrefabEntityModel" %>



<div class="fieldcontain ${hasErrors(bean: prefabEntityModelInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="prefabEntityModel.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${prefabEntityModelInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: prefabEntityModelInstance, field: 'entityKey', 'error')} ">
	<label for="entityKey">
		<g:message code="prefabEntityModel.entityKey.label" default="Entity Key" />
		
	</label>
	<g:textField name="entityKey" value="${prefabEntityModelInstance?.entityKey}" />

</div>

<div class="fieldcontain ${hasErrors(bean: prefabEntityModelInstance, field: 'entityPrefabPath', 'error')} ">
	<label for="entityPrefabPath">
		<g:message code="prefabEntityModel.entityPrefabPath.label" default="Entity Prefab Path" />
		
	</label>
	<g:textField name="entityPrefabPath" value="${prefabEntityModelInstance?.entityPrefabPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: prefabEntityModelInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="prefabEntityModel.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${prefabEntityModelInstance?.name}" />

</div>

