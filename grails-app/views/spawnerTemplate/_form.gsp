<%@ page import="com.tiem625.tankarena.utils.SpawnerTemplate" %>



<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="spawnerTemplate.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${spawnerTemplateInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'entityKey', 'error')} ">
	<label for="entityKey">
		<g:message code="spawnerTemplate.entityKey.label" default="Entity Key" />
		
	</label>
	<g:textField name="entityKey" value="${spawnerTemplateInstance?.entityKey}" />

</div>

<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'goPathsToProbs', 'error')} ">
	<label for="goPathsToProbs">
		<g:message code="spawnerTemplate.goPathsToProbs.label" default="Go Paths To Probs" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'gracePeriod', 'error')} ">
	<label for="gracePeriod">
		<g:message code="spawnerTemplate.gracePeriod.label" default="Grace Period" />
		
	</label>
	<g:field type="number" name="gracePeriod" value="${spawnerTemplateInstance.gracePeriod}" />

</div>

<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="spawnerTemplate.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${spawnerTemplateInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'simultaneous', 'error')} ">
	<label for="simultaneous">
		<g:message code="spawnerTemplate.simultaneous.label" default="Simultaneous" />
		
	</label>
	<g:field type="number" name="simultaneous" value="${spawnerTemplateInstance.simultaneous}" />

</div>

<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'spawnPool', 'error')} ">
	<label for="spawnPool">
		<g:message code="spawnerTemplate.spawnPool.label" default="Spawn Pool" />
		
	</label>
	<g:field type="number" name="spawnPool" value="${spawnerTemplateInstance.spawnPool}" />

</div>

<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'spreadMaxXY', 'error')} ">
	<label for="spreadMaxXY">
		<g:message code="spawnerTemplate.spreadMaxXY.label" default="Spread Max XY" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'spreadMinXY', 'error')} ">
	<label for="spreadMinXY">
		<g:message code="spawnerTemplate.spreadMinXY.label" default="Spread Min XY" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: spawnerTemplateInstance, field: 'targetTag', 'error')} ">
	<label for="targetTag">
		<g:message code="spawnerTemplate.targetTag.label" default="Target Tag" />
		
	</label>
	<g:textField name="targetTag" value="${spawnerTemplateInstance?.targetTag}" />

</div>

