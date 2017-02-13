<%@ page import="com.tiem625.tankarena.model.tank.TankTurret" %>



<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'activeSprites', 'error')} ">
	<label for="activeSprites">
		<g:message code="tankTurret.activeSprites.label" default="Active Sprites" />
		
	</label>
	<g:field type="number" name="activeSprites" value="${tankTurretInstance.activeSprites}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'collisionBox', 'error')} ">
	<label for="collisionBox">
		<g:message code="tankTurret.collisionBox.label" default="Collision Box" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="tankTurret.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${tankTurretInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'entityKey', 'error')} ">
	<label for="entityKey">
		<g:message code="tankTurret.entityKey.label" default="Entity Key" />
		
	</label>
	<g:textField name="entityKey" value="${tankTurretInstance?.entityKey}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'garageItemPath', 'error')} ">
	<label for="garageItemPath">
		<g:message code="tankTurret.garageItemPath.label" default="Garage Item Path" />
		
	</label>
	<g:textField name="garageItemPath" value="${tankTurretInstance?.garageItemPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'heavyWeaponSlots', 'error')} ">
	<label for="heavyWeaponSlots">
		<g:message code="tankTurret.heavyWeaponSlots.label" default="Heavy Weapon Slots" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'lightWeaponSlots', 'error')} ">
	<label for="lightWeaponSlots">
		<g:message code="tankTurret.lightWeaponSlots.label" default="Light Weapon Slots" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'mass', 'error')} ">
	<label for="mass">
		<g:message code="tankTurret.mass.label" default="Mass" />
		
	</label>
	<g:field type="number" name="mass" value="${tankTurretInstance.mass}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="tankTurret.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${tankTurretInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'onTankPosition', 'error')} ">
	<label for="onTankPosition">
		<g:message code="tankTurret.onTankPosition.label" default="On Tank Position" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'price', 'error')} ">
	<label for="price">
		<g:message code="tankTurret.price.label" default="Price" />
		
	</label>
	<g:field type="number" name="price" value="${tankTurretInstance.price}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'shopItemImagePath', 'error')} ">
	<label for="shopItemImagePath">
		<g:message code="tankTurret.shopItemImagePath.label" default="Shop Item Image Path" />
		
	</label>
	<g:textField name="shopItemImagePath" value="${tankTurretInstance?.shopItemImagePath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'spinSoundPath', 'error')} ">
	<label for="spinSoundPath">
		<g:message code="tankTurret.spinSoundPath.label" default="Spin Sound Path" />
		
	</label>
	<g:textField name="spinSoundPath" value="${tankTurretInstance?.spinSoundPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'spinSpeed', 'error')} ">
	<label for="spinSpeed">
		<g:message code="tankTurret.spinSpeed.label" default="Spin Speed" />
		
	</label>
	<g:field type="number" name="spinSpeed" value="${tankTurretInstance.spinSpeed}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'spritesPath', 'error')} ">
	<label for="spritesPath">
		<g:message code="tankTurret.spritesPath.label" default="Sprites Path" />
		
	</label>
	<g:textField name="spritesPath" value="${tankTurretInstance?.spritesPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankTurretInstance, field: 'weaponShopImagePath', 'error')} ">
	<label for="weaponShopImagePath">
		<g:message code="tankTurret.weaponShopImagePath.label" default="Weapon Shop Image Path" />
		
	</label>
	<g:textField name="weaponShopImagePath" value="${tankTurretInstance?.weaponShopImagePath}" />

</div>

