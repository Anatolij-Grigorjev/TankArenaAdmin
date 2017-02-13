
<%@ page import="com.tiem625.tankarena.model.tank.TankTracks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tankTracks.label', default: 'TankTracks')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-tankTracks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-tankTracks" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list tankTracks">
			
				<g:if test="${tankTracksInstance?.activeSprites}">
				<li class="fieldcontain">
					<span id="activeSprites-label" class="property-label"><g:message code="tankTracks.activeSprites.label" default="Active Sprites" /></span>
					
						<span class="property-value" aria-labelledby="activeSprites-label"><g:fieldValue bean="${tankTracksInstance}" field="activeSprites"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.collisionBox}">
				<li class="fieldcontain">
					<span id="collisionBox-label" class="property-label"><g:message code="tankTracks.collisionBox.label" default="Collision Box" /></span>
					
						<span class="property-value" aria-labelledby="collisionBox-label"><g:fieldValue bean="${tankTracksInstance}" field="collisionBox"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.coupling}">
				<li class="fieldcontain">
					<span id="coupling-label" class="property-label"><g:message code="tankTracks.coupling.label" default="Coupling" /></span>
					
						<span class="property-value" aria-labelledby="coupling-label"><g:fieldValue bean="${tankTracksInstance}" field="coupling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="tankTracks.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${tankTracksInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.entityKey}">
				<li class="fieldcontain">
					<span id="entityKey-label" class="property-label"><g:message code="tankTracks.entityKey.label" default="Entity Key" /></span>
					
						<span class="property-value" aria-labelledby="entityKey-label"><g:fieldValue bean="${tankTracksInstance}" field="entityKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.garageItemPath}">
				<li class="fieldcontain">
					<span id="garageItemPath-label" class="property-label"><g:message code="tankTracks.garageItemPath.label" default="Garage Item Path" /></span>
					
						<span class="property-value" aria-labelledby="garageItemPath-label"><g:fieldValue bean="${tankTracksInstance}" field="garageItemPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.leftTrackPosition}">
				<li class="fieldcontain">
					<span id="leftTrackPosition-label" class="property-label"><g:message code="tankTracks.leftTrackPosition.label" default="Left Track Position" /></span>
					
						<span class="property-value" aria-labelledby="leftTrackPosition-label"><g:fieldValue bean="${tankTracksInstance}" field="leftTrackPosition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.lowerIntegriy}">
				<li class="fieldcontain">
					<span id="lowerIntegriy-label" class="property-label"><g:message code="tankTracks.lowerIntegriy.label" default="Lower Integriy" /></span>
					
						<span class="property-value" aria-labelledby="lowerIntegriy-label"><g:fieldValue bean="${tankTracksInstance}" field="lowerIntegriy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.mass}">
				<li class="fieldcontain">
					<span id="mass-label" class="property-label"><g:message code="tankTracks.mass.label" default="Mass" /></span>
					
						<span class="property-value" aria-labelledby="mass-label"><g:fieldValue bean="${tankTracksInstance}" field="mass"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="tankTracks.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${tankTracksInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.onTankPosition}">
				<li class="fieldcontain">
					<span id="onTankPosition-label" class="property-label"><g:message code="tankTracks.onTankPosition.label" default="On Tank Position" /></span>
					
						<span class="property-value" aria-labelledby="onTankPosition-label"><g:fieldValue bean="${tankTracksInstance}" field="onTankPosition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="tankTracks.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${tankTracksInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.rightTrackPosition}">
				<li class="fieldcontain">
					<span id="rightTrackPosition-label" class="property-label"><g:message code="tankTracks.rightTrackPosition.label" default="Right Track Position" /></span>
					
						<span class="property-value" aria-labelledby="rightTrackPosition-label"><g:fieldValue bean="${tankTracksInstance}" field="rightTrackPosition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.shopItemImagePath}">
				<li class="fieldcontain">
					<span id="shopItemImagePath-label" class="property-label"><g:message code="tankTracks.shopItemImagePath.label" default="Shop Item Image Path" /></span>
					
						<span class="property-value" aria-labelledby="shopItemImagePath-label"><g:fieldValue bean="${tankTracksInstance}" field="shopItemImagePath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.spritesPath}">
				<li class="fieldcontain">
					<span id="spritesPath-label" class="property-label"><g:message code="tankTracks.spritesPath.label" default="Sprites Path" /></span>
					
						<span class="property-value" aria-labelledby="spritesPath-label"><g:fieldValue bean="${tankTracksInstance}" field="spritesPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tankTracksInstance?.turnSpeed}">
				<li class="fieldcontain">
					<span id="turnSpeed-label" class="property-label"><g:message code="tankTracks.turnSpeed.label" default="Turn Speed" /></span>
					
						<span class="property-value" aria-labelledby="turnSpeed-label"><g:fieldValue bean="${tankTracksInstance}" field="turnSpeed"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tankTracksInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tankTracksInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
