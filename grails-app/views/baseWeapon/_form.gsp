<%@ page import="com.tiem625.tankarena.model.weapons.BaseWeapon" %>



<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'clipSize', 'error')} ">
	<label for="clipSize">
		<g:message code="baseWeapon.clipSize.label" default="Clip Size" />
		
	</label>
	<g:field type="number" name="clipSize" value="${baseWeaponInstance.clipSize}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'damage', 'error')} ">
	<label for="damage">
		<g:message code="baseWeapon.damage.label" default="Damage" />
		
	</label>
	<g:field type="number" name="damage" value="${baseWeaponInstance.damage}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="baseWeapon.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${baseWeaponInstance?.description}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'entityKey', 'error')} ">
	<label for="entityKey">
		<g:message code="baseWeapon.entityKey.label" default="Entity Key" />
		
	</label>
	<g:textField name="entityKey" value="${baseWeaponInstance?.entityKey}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="baseWeapon.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${baseWeaponInstance?.name}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'onTurretPositions', 'error')} ">
	<label for="onTurretPositions">
		<g:message code="baseWeapon.onTurretPositions.label" default="On Turret Positions" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'price', 'error')} ">
	<label for="price">
		<g:message code="baseWeapon.price.label" default="Price" />
		
	</label>
	<g:field type="number" name="price" value="${baseWeaponInstance.price}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'projectilePrefabPath', 'error')} ">
	<label for="projectilePrefabPath">
		<g:message code="baseWeapon.projectilePrefabPath.label" default="Projectile Prefab Path" />
		
	</label>
	<g:textField name="projectilePrefabPath" value="${baseWeaponInstance?.projectilePrefabPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'projectileWidth', 'error')} ">
	<label for="projectileWidth">
		<g:message code="baseWeapon.projectileWidth.label" default="Projectile Width" />
		
	</label>
	<g:field type="number" name="projectileWidth" value="${baseWeaponInstance.projectileWidth}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'range', 'error')} ">
	<label for="range">
		<g:message code="baseWeapon.range.label" default="Range" />
		
	</label>
	<g:field type="number" name="range" value="${baseWeaponInstance.range}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'rateOfFire', 'error')} ">
	<label for="rateOfFire">
		<g:message code="baseWeapon.rateOfFire.label" default="Rate Of Fire" />
		
	</label>
	<g:field type="number" name="rateOfFire" value="${baseWeaponInstance.rateOfFire}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'reloadSoundPath', 'error')} ">
	<label for="reloadSoundPath">
		<g:message code="baseWeapon.reloadSoundPath.label" default="Reload Sound Path" />
		
	</label>
	<g:textField name="reloadSoundPath" value="${baseWeaponInstance?.reloadSoundPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'reloadTime', 'error')} ">
	<label for="reloadTime">
		<g:message code="baseWeapon.reloadTime.label" default="Reload Time" />
		
	</label>
	<g:field type="number" name="reloadTime" value="${baseWeaponInstance.reloadTime}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'shopItemImagePath', 'error')} ">
	<label for="shopItemImagePath">
		<g:message code="baseWeapon.shopItemImagePath.label" default="Shop Item Image Path" />
		
	</label>
	<g:textField name="shopItemImagePath" value="${baseWeaponInstance?.shopItemImagePath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'shotSoundPath', 'error')} ">
	<label for="shotSoundPath">
		<g:message code="baseWeapon.shotSoundPath.label" default="Shot Sound Path" />
		
	</label>
	<g:textField name="shotSoundPath" value="${baseWeaponInstance?.shotSoundPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'sprtesPath', 'error')} ">
	<label for="sprtesPath">
		<g:message code="baseWeapon.sprtesPath.label" default="Sprtes Path" />
		
	</label>
	<g:textField name="sprtesPath" value="${baseWeaponInstance?.sprtesPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'weaponAnimationControllerPath', 'error')} ">
	<label for="weaponAnimationControllerPath">
		<g:message code="baseWeapon.weaponAnimationControllerPath.label" default="Weapon Animation Controller Path" />
		
	</label>
	<g:textField name="weaponAnimationControllerPath" value="${baseWeaponInstance?.weaponAnimationControllerPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'weaponBehaviorType', 'error')} ">
	<label for="weaponBehaviorType">
		<g:message code="baseWeapon.weaponBehaviorType.label" default="Weapon Behavior Type" />
		
	</label>
	<g:select name="weaponBehaviorType" from="${com.tiem625.tankarena.utils.enums.WeaponBehaviorTypes?.values()}" keys="${com.tiem625.tankarena.utils.enums.WeaponBehaviorTypes.values()*.name()}" required="" value="${baseWeaponInstance?.weaponBehaviorType?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: baseWeaponInstance, field: 'weaponType', 'error')} ">
	<label for="weaponType">
		<g:message code="baseWeapon.weaponType.label" default="Weapon Type" />
		
	</label>
	<g:select name="weaponType" from="${com.tiem625.tankarena.utils.enums.WeaponTypes?.values()}" keys="${com.tiem625.tankarena.utils.enums.WeaponTypes.values()*.name()}" required="" value="${baseWeaponInstance?.weaponType?.name()}" />

</div>

