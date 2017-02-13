<%@ page import="com.tiem625.tankarena.model.tank.TankTracks" %>



<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'activeSprites', 'error')} ">
	<label for="activeSprites">
		<g:message code="tankTracks.activeSprites.label" default="Active Sprites" />
		
	</label>
	<g:field type="number" name="activeSprites" value="${tankTracksInstance.activeSprites}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'collisionBox', 'error')} ">
	<label for="collisionBox">
		<g:message code="tankTracks.collisionBox.label" default="Collision Box" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'coupling', 'error')} ">
	<label for="coupling">
		<g:message code="tankTracks.coupling.label" default="Coupling" />
		
	</label>
	<g:field type="number" name="coupling" value="${tankTracksInstance.coupling}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="tankTracks.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${tankTracksInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'entityKey', 'error')} ">
	<label for="entityKey">
		<g:message code="tankTracks.entityKey.label" default="Entity Key" />
		
	</label>
	<g:textField name="entityKey" value="${tankTracksInstance?.entityKey}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'garageItemPath', 'error')} ">
	<label for="garageItemPath">
		<g:message code="tankTracks.garageItemPath.label" default="Garage Item Path" />
		
	</label>
	<g:textField name="garageItemPath" value="${tankTracksInstance?.garageItemPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'leftTrackPosition', 'error')} ">
	<label for="leftTrackPosition">
		<g:message code="tankTracks.leftTrackPosition.label" default="Left Track Position" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'lowerIntegriy', 'error')} ">
	<label for="lowerIntegriy">
		<g:message code="tankTracks.lowerIntegriy.label" default="Lower Integriy" />
		
	</label>
	<g:field type="number" name="lowerIntegriy" value="${tankTracksInstance.lowerIntegriy}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'mass', 'error')} ">
	<label for="mass">
		<g:message code="tankTracks.mass.label" default="Mass" />
		
	</label>
	<g:field type="number" name="mass" value="${tankTracksInstance.mass}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tankTracks.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tankTracksInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'onTankPosition', 'error')} ">
	<label for="onTankPosition">
		<g:message code="tankTracks.onTankPosition.label" default="On Tank Position" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'price', 'error')} ">
	<label for="price">
		<g:message code="tankTracks.price.label" default="Price" />
		
	</label>
	<g:field type="number" name="price" value="${tankTracksInstance.price}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'rightTrackPosition', 'error')} ">
	<label for="rightTrackPosition">
		<g:message code="tankTracks.rightTrackPosition.label" default="Right Track Position" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'shopItemImagePath', 'error')} ">
	<label for="shopItemImagePath">
		<g:message code="tankTracks.shopItemImagePath.label" default="Shop Item Image Path" />
		
	</label>
	<g:textField name="shopItemImagePath" value="${tankTracksInstance?.shopItemImagePath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'spritesPath', 'error')} ">
	<label for="spritesPath">
		<g:message code="tankTracks.spritesPath.label" default="Sprites Path" />
		
	</label>
	<g:textField name="spritesPath" value="${tankTracksInstance?.spritesPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTracksInstance, field: 'turnSpeed', 'error')} ">
	<label for="turnSpeed">
		<g:message code="tankTracks.turnSpeed.label" default="Turn Speed" />
		
	</label>
	<g:field type="number" name="turnSpeed" value="${tankTracksInstance.turnSpeed}" />

</div>

