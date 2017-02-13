<%@ page import="com.tiem625.tankarena.model.character.PlayableCharacter" %>



<div class="fieldcontain ${hasErrors(bean: playableCharacterInstance, field: 'avatarPath', 'error')} ">
	<label for="avatarPath">
		<g:message code="playableCharacter.avatarPath.label" default="Avatar Path" />
		
	</label>
	<g:textField name="avatarPath" value="${playableCharacterInstance?.avatarPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: playableCharacterInstance, field: 'backgroundPath', 'error')} ">
	<label for="backgroundPath">
		<g:message code="playableCharacter.backgroundPath.label" default="Background Path" />
		
	</label>
	<g:textField name="backgroundPath" value="${playableCharacterInstance?.backgroundPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: playableCharacterInstance, field: 'characterModelPath', 'error')} ">
	<label for="characterModelPath">
		<g:message code="playableCharacter.characterModelPath.label" default="Character Model Path" />
		
	</label>
	<g:textField name="characterModelPath" value="${playableCharacterInstance?.characterModelPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: playableCharacterInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="playableCharacter.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${playableCharacterInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: playableCharacterInstance, field: 'entityKey', 'error')} ">
	<label for="entityKey">
		<g:message code="playableCharacter.entityKey.label" default="Entity Key" />
		
	</label>
	<g:textField name="entityKey" value="${playableCharacterInstance?.entityKey}" />

</div>

<div class="fieldcontain ${hasErrors(bean: playableCharacterInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="playableCharacter.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${playableCharacterInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: playableCharacterInstance, field: 'startingCash', 'error')} ">
	<label for="startingCash">
		<g:message code="playableCharacter.startingCash.label" default="Starting Cash" />
		
	</label>
	<g:field type="number" name="startingCash" value="${playableCharacterInstance.startingCash}" />

</div>

<div class="fieldcontain ${hasErrors(bean: playableCharacterInstance, field: 'startingHealth', 'error')} ">
	<label for="startingHealth">
		<g:message code="playableCharacter.startingHealth.label" default="Starting Health" />
		
	</label>
	<g:field type="number" name="startingHealth" value="${playableCharacterInstance.startingHealth}" />

</div>

<div class="fieldcontain ${hasErrors(bean: playableCharacterInstance, field: 'startingTankCode', 'error')} ">
	<label for="startingTankCode">
		<g:message code="playableCharacter.startingTankCode.label" default="Starting Tank Code" />
		
	</label>
	<g:textField name="startingTankCode" value="${playableCharacterInstance?.startingTankCode}" />

</div>

