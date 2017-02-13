
<%@ page import="com.tiem625.tankarena.model.tank.TankChassis" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tankChassis.label', default: 'TankChassis')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tankChassis" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tankChassis" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tankChassis">
			
				<g:if test="${tankChassisInstance?.activeSprites}">
				<li class="fieldcontain">
					<span id="activeSprites-label" class="property-label"><g:message code="tankChassis.activeSprites.label" default="Active Sprites" /></span>
					
						<span class="property-value" aria-labelledby="activeSprites-label"><g:fieldValue bean="${tankChassisInstance}" field="activeSprites"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.collisionBox}">
				<li class="fieldcontain">
					<span id="collisionBox-label" class="property-label"><g:message code="tankChassis.collisionBox.label" default="Collision Box" /></span>
					
						<span class="property-value" aria-labelledby="collisionBox-label"><g:fieldValue bean="${tankChassisInstance}" field="collisionBox"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="tankChassis.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${tankChassisInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.entityKey}">
				<li class="fieldcontain">
					<span id="entityKey-label" class="property-label"><g:message code="tankChassis.entityKey.label" default="Entity Key" /></span>
					
						<span class="property-value" aria-labelledby="entityKey-label"><g:fieldValue bean="${tankChassisInstance}" field="entityKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.garageItemPath}">
				<li class="fieldcontain">
					<span id="garageItemPath-label" class="property-label"><g:message code="tankChassis.garageItemPath.label" default="Garage Item Path" /></span>
					
						<span class="property-value" aria-labelledby="garageItemPath-label"><g:fieldValue bean="${tankChassisInstance}" field="garageItemPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.integrity}">
				<li class="fieldcontain">
					<span id="integrity-label" class="property-label"><g:message code="tankChassis.integrity.label" default="Integrity" /></span>
					
						<span class="property-value" aria-labelledby="integrity-label"><g:fieldValue bean="${tankChassisInstance}" field="integrity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.mass}">
				<li class="fieldcontain">
					<span id="mass-label" class="property-label"><g:message code="tankChassis.mass.label" default="Mass" /></span>
					
						<span class="property-value" aria-labelledby="mass-label"><g:fieldValue bean="${tankChassisInstance}" field="mass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="tankChassis.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${tankChassisInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.onTankPosition}">
				<li class="fieldcontain">
					<span id="onTankPosition-label" class="property-label"><g:message code="tankChassis.onTankPosition.label" default="On Tank Position" /></span>
					
						<span class="property-value" aria-labelledby="onTankPosition-label"><g:fieldValue bean="${tankChassisInstance}" field="onTankPosition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="tankChassis.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${tankChassisInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.shopItemImagePath}">
				<li class="fieldcontain">
					<span id="shopItemImagePath-label" class="property-label"><g:message code="tankChassis.shopItemImagePath.label" default="Shop Item Image Path" /></span>
					
						<span class="property-value" aria-labelledby="shopItemImagePath-label"><g:fieldValue bean="${tankChassisInstance}" field="shopItemImagePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.spritesPath}">
				<li class="fieldcontain">
					<span id="spritesPath-label" class="property-label"><g:message code="tankChassis.spritesPath.label" default="Sprites Path" /></span>
					
						<span class="property-value" aria-labelledby="spritesPath-label"><g:fieldValue bean="${tankChassisInstance}" field="spritesPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankChassisInstance?.turretPivot}">
				<li class="fieldcontain">
					<span id="turretPivot-label" class="property-label"><g:message code="tankChassis.turretPivot.label" default="Turret Pivot" /></span>
					
						<span class="property-value" aria-labelledby="turretPivot-label"><g:fieldValue bean="${tankChassisInstance}" field="turretPivot"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tankChassisInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tankChassisInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
