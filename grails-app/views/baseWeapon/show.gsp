
<%@ page import="com.tiem625.tankarena.model.weapons.BaseWeapon" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'baseWeapon.label', default: 'BaseWeapon')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-baseWeapon" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-baseWeapon" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list baseWeapon">
			
				<g:if test="${baseWeaponInstance?.clipSize}">
				<li class="fieldcontain">
					<span id="clipSize-label" class="property-label"><g:message code="baseWeapon.clipSize.label" default="Clip Size" /></span>
					
						<span class="property-value" aria-labelledby="clipSize-label"><g:fieldValue bean="${baseWeaponInstance}" field="clipSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.damage}">
				<li class="fieldcontain">
					<span id="damage-label" class="property-label"><g:message code="baseWeapon.damage.label" default="Damage" /></span>
					
						<span class="property-value" aria-labelledby="damage-label"><g:fieldValue bean="${baseWeaponInstance}" field="damage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="baseWeapon.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${baseWeaponInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.entityKey}">
				<li class="fieldcontain">
					<span id="entityKey-label" class="property-label"><g:message code="baseWeapon.entityKey.label" default="Entity Key" /></span>
					
						<span class="property-value" aria-labelledby="entityKey-label"><g:fieldValue bean="${baseWeaponInstance}" field="entityKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="baseWeapon.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${baseWeaponInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.onTurretPositions}">
				<li class="fieldcontain">
					<span id="onTurretPositions-label" class="property-label"><g:message code="baseWeapon.onTurretPositions.label" default="On Turret Positions" /></span>
					
						<span class="property-value" aria-labelledby="onTurretPositions-label"><g:fieldValue bean="${baseWeaponInstance}" field="onTurretPositions"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="baseWeapon.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${baseWeaponInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.projectilePrefabPath}">
				<li class="fieldcontain">
					<span id="projectilePrefabPath-label" class="property-label"><g:message code="baseWeapon.projectilePrefabPath.label" default="Projectile Prefab Path" /></span>
					
						<span class="property-value" aria-labelledby="projectilePrefabPath-label"><g:fieldValue bean="${baseWeaponInstance}" field="projectilePrefabPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.projectileWidth}">
				<li class="fieldcontain">
					<span id="projectileWidth-label" class="property-label"><g:message code="baseWeapon.projectileWidth.label" default="Projectile Width" /></span>
					
						<span class="property-value" aria-labelledby="projectileWidth-label"><g:fieldValue bean="${baseWeaponInstance}" field="projectileWidth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.range}">
				<li class="fieldcontain">
					<span id="range-label" class="property-label"><g:message code="baseWeapon.range.label" default="Range" /></span>
					
						<span class="property-value" aria-labelledby="range-label"><g:fieldValue bean="${baseWeaponInstance}" field="range"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.rateOfFire}">
				<li class="fieldcontain">
					<span id="rateOfFire-label" class="property-label"><g:message code="baseWeapon.rateOfFire.label" default="Rate Of Fire" /></span>
					
						<span class="property-value" aria-labelledby="rateOfFire-label"><g:fieldValue bean="${baseWeaponInstance}" field="rateOfFire"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.reloadSoundPath}">
				<li class="fieldcontain">
					<span id="reloadSoundPath-label" class="property-label"><g:message code="baseWeapon.reloadSoundPath.label" default="Reload Sound Path" /></span>
					
						<span class="property-value" aria-labelledby="reloadSoundPath-label"><g:fieldValue bean="${baseWeaponInstance}" field="reloadSoundPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.reloadTime}">
				<li class="fieldcontain">
					<span id="reloadTime-label" class="property-label"><g:message code="baseWeapon.reloadTime.label" default="Reload Time" /></span>
					
						<span class="property-value" aria-labelledby="reloadTime-label"><g:fieldValue bean="${baseWeaponInstance}" field="reloadTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.shopItemImagePath}">
				<li class="fieldcontain">
					<span id="shopItemImagePath-label" class="property-label"><g:message code="baseWeapon.shopItemImagePath.label" default="Shop Item Image Path" /></span>
					
						<span class="property-value" aria-labelledby="shopItemImagePath-label"><g:fieldValue bean="${baseWeaponInstance}" field="shopItemImagePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.shotSoundPath}">
				<li class="fieldcontain">
					<span id="shotSoundPath-label" class="property-label"><g:message code="baseWeapon.shotSoundPath.label" default="Shot Sound Path" /></span>
					
						<span class="property-value" aria-labelledby="shotSoundPath-label"><g:fieldValue bean="${baseWeaponInstance}" field="shotSoundPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.sprtesPath}">
				<li class="fieldcontain">
					<span id="sprtesPath-label" class="property-label"><g:message code="baseWeapon.sprtesPath.label" default="Sprtes Path" /></span>
					
						<span class="property-value" aria-labelledby="sprtesPath-label"><g:fieldValue bean="${baseWeaponInstance}" field="sprtesPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.weaponAnimationControllerPath}">
				<li class="fieldcontain">
					<span id="weaponAnimationControllerPath-label" class="property-label"><g:message code="baseWeapon.weaponAnimationControllerPath.label" default="Weapon Animation Controller Path" /></span>
					
						<span class="property-value" aria-labelledby="weaponAnimationControllerPath-label"><g:fieldValue bean="${baseWeaponInstance}" field="weaponAnimationControllerPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.weaponBehaviorType}">
				<li class="fieldcontain">
					<span id="weaponBehaviorType-label" class="property-label"><g:message code="baseWeapon.weaponBehaviorType.label" default="Weapon Behavior Type" /></span>
					
						<span class="property-value" aria-labelledby="weaponBehaviorType-label"><g:fieldValue bean="${baseWeaponInstance}" field="weaponBehaviorType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseWeaponInstance?.weaponType}">
				<li class="fieldcontain">
					<span id="weaponType-label" class="property-label"><g:message code="baseWeapon.weaponType.label" default="Weapon Type" /></span>
					
						<span class="property-value" aria-labelledby="weaponType-label"><g:fieldValue bean="${baseWeaponInstance}" field="weaponType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:baseWeaponInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${baseWeaponInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
