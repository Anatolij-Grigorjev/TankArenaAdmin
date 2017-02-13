
<%@ page import="com.tiem625.tankarena.model.tank.TankTurret" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tankTurret.label', default: 'TankTurret')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tankTurret" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tankTurret" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tankTurret">
			
				<g:if test="${tankTurretInstance?.activeSprites}">
				<li class="fieldcontain">
					<span id="activeSprites-label" class="property-label"><g:message code="tankTurret.activeSprites.label" default="Active Sprites" /></span>
					
						<span class="property-value" aria-labelledby="activeSprites-label"><g:fieldValue bean="${tankTurretInstance}" field="activeSprites"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.collisionBox}">
				<li class="fieldcontain">
					<span id="collisionBox-label" class="property-label"><g:message code="tankTurret.collisionBox.label" default="Collision Box" /></span>
					
						<span class="property-value" aria-labelledby="collisionBox-label"><g:fieldValue bean="${tankTurretInstance}" field="collisionBox"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="tankTurret.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${tankTurretInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.entityKey}">
				<li class="fieldcontain">
					<span id="entityKey-label" class="property-label"><g:message code="tankTurret.entityKey.label" default="Entity Key" /></span>
					
						<span class="property-value" aria-labelledby="entityKey-label"><g:fieldValue bean="${tankTurretInstance}" field="entityKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.garageItemPath}">
				<li class="fieldcontain">
					<span id="garageItemPath-label" class="property-label"><g:message code="tankTurret.garageItemPath.label" default="Garage Item Path" /></span>
					
						<span class="property-value" aria-labelledby="garageItemPath-label"><g:fieldValue bean="${tankTurretInstance}" field="garageItemPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.heavyWeaponSlots}">
				<li class="fieldcontain">
					<span id="heavyWeaponSlots-label" class="property-label"><g:message code="tankTurret.heavyWeaponSlots.label" default="Heavy Weapon Slots" /></span>
					
						<span class="property-value" aria-labelledby="heavyWeaponSlots-label"><g:fieldValue bean="${tankTurretInstance}" field="heavyWeaponSlots"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.lightWeaponSlots}">
				<li class="fieldcontain">
					<span id="lightWeaponSlots-label" class="property-label"><g:message code="tankTurret.lightWeaponSlots.label" default="Light Weapon Slots" /></span>
					
						<span class="property-value" aria-labelledby="lightWeaponSlots-label"><g:fieldValue bean="${tankTurretInstance}" field="lightWeaponSlots"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.mass}">
				<li class="fieldcontain">
					<span id="mass-label" class="property-label"><g:message code="tankTurret.mass.label" default="Mass" /></span>
					
						<span class="property-value" aria-labelledby="mass-label"><g:fieldValue bean="${tankTurretInstance}" field="mass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="tankTurret.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${tankTurretInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.onTankPosition}">
				<li class="fieldcontain">
					<span id="onTankPosition-label" class="property-label"><g:message code="tankTurret.onTankPosition.label" default="On Tank Position" /></span>
					
						<span class="property-value" aria-labelledby="onTankPosition-label"><g:fieldValue bean="${tankTurretInstance}" field="onTankPosition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="tankTurret.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${tankTurretInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.shopItemImagePath}">
				<li class="fieldcontain">
					<span id="shopItemImagePath-label" class="property-label"><g:message code="tankTurret.shopItemImagePath.label" default="Shop Item Image Path" /></span>
					
						<span class="property-value" aria-labelledby="shopItemImagePath-label"><g:fieldValue bean="${tankTurretInstance}" field="shopItemImagePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.spinSoundPath}">
				<li class="fieldcontain">
					<span id="spinSoundPath-label" class="property-label"><g:message code="tankTurret.spinSoundPath.label" default="Spin Sound Path" /></span>
					
						<span class="property-value" aria-labelledby="spinSoundPath-label"><g:fieldValue bean="${tankTurretInstance}" field="spinSoundPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.spinSpeed}">
				<li class="fieldcontain">
					<span id="spinSpeed-label" class="property-label"><g:message code="tankTurret.spinSpeed.label" default="Spin Speed" /></span>
					
						<span class="property-value" aria-labelledby="spinSpeed-label"><g:fieldValue bean="${tankTurretInstance}" field="spinSpeed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.spritesPath}">
				<li class="fieldcontain">
					<span id="spritesPath-label" class="property-label"><g:message code="tankTurret.spritesPath.label" default="Sprites Path" /></span>
					
						<span class="property-value" aria-labelledby="spritesPath-label"><g:fieldValue bean="${tankTurretInstance}" field="spritesPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTurretInstance?.weaponShopImagePath}">
				<li class="fieldcontain">
					<span id="weaponShopImagePath-label" class="property-label"><g:message code="tankTurret.weaponShopImagePath.label" default="Weapon Shop Image Path" /></span>
					
						<span class="property-value" aria-labelledby="weaponShopImagePath-label"><g:fieldValue bean="${tankTurretInstance}" field="weaponShopImagePath"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tankTurretInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tankTurretInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
