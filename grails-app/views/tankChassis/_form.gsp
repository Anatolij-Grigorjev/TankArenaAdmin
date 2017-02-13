<%@ page import="com.tiem625.tankarena.model.tank.TankChassis" %>



<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'activeSprites', 'error')} ">
	<label for="activeSprites">
		<g:message code="tankChassis.activeSprites.label" default="Active Sprites" />
		
	</label>
	<g:field type="number" name="activeSprites" value="${tankChassisInstance.activeSprites}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'collisionBox', 'error')} ">
	<label for="collisionBox">
		<g:message code="tankChassis.collisionBox.label" default="Collision Box" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="tankChassis.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${tankChassisInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'entityKey', 'error')} ">
	<label for="entityKey">
		<g:message code="tankChassis.entityKey.label" default="Entity Key" />
		
	</label>
	<g:textField name="entityKey" value="${tankChassisInstance?.entityKey}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'garageItemPath', 'error')} ">
	<label for="garageItemPath">
		<g:message code="tankChassis.garageItemPath.label" default="Garage Item Path" />
		
	</label>
	<g:textField name="garageItemPath" value="${tankChassisInstance?.garageItemPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'integrity', 'error')} ">
	<label for="integrity">
		<g:message code="tankChassis.integrity.label" default="Integrity" />
		
	</label>
	<g:field type="number" name="integrity" value="${tankChassisInstance.integrity}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'mass', 'error')} ">
	<label for="mass">
		<g:message code="tankChassis.mass.label" default="Mass" />
		
	</label>
	<g:field type="number" name="mass" value="${tankChassisInstance.mass}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tankChassis.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tankChassisInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'onTankPosition', 'error')} ">
	<label for="onTankPosition">
		<g:message code="tankChassis.onTankPosition.label" default="On Tank Position" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'price', 'error')} ">
	<label for="price">
		<g:message code="tankChassis.price.label" default="Price" />
		
	</label>
	<g:field type="number" name="price" value="${tankChassisInstance.price}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'shopItemImagePath', 'error')} ">
	<label for="shopItemImagePath">
		<g:message code="tankChassis.shopItemImagePath.label" default="Shop Item Image Path" />
		
	</label>
	<g:textField name="shopItemImagePath" value="${tankChassisInstance?.shopItemImagePath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'spritesPath', 'error')} ">
	<label for="spritesPath">
		<g:message code="tankChassis.spritesPath.label" default="Sprites Path" />
		
	</label>
	<g:textField name="spritesPath" value="${tankChassisInstance?.spritesPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankChassisInstance, field: 'turretPivot', 'error')} ">
	<label for="turretPivot">
		<g:message code="tankChassis.turretPivot.label" default="Turret Pivot" />
		
	</label>
	

</div>

