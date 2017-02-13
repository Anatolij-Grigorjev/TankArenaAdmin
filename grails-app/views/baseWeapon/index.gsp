
<%@ page import="com.tiem625.tankarena.model.weapons.BaseWeapon" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'baseWeapon.label', default: 'BaseWeapon')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-baseWeapon" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-baseWeapon" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="clipSize" title="${message(code: 'baseWeapon.clipSize.label', default: 'Clip Size')}" />
					
						<g:sortableColumn property="damage" title="${message(code: 'baseWeapon.damage.label', default: 'Damage')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'baseWeapon.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="entityKey" title="${message(code: 'baseWeapon.entityKey.label', default: 'Entity Key')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'baseWeapon.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="onTurretPositions" title="${message(code: 'baseWeapon.onTurretPositions.label', default: 'On Turret Positions')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${baseWeaponInstanceList}" status="i" var="baseWeaponInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${baseWeaponInstance.id}">${fieldValue(bean: baseWeaponInstance, field: "clipSize")}</g:link></td>
					
						<td>${fieldValue(bean: baseWeaponInstance, field: "damage")}</td>
					
						<td>${fieldValue(bean: baseWeaponInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: baseWeaponInstance, field: "entityKey")}</td>
					
						<td>${fieldValue(bean: baseWeaponInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: baseWeaponInstance, field: "onTurretPositions")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${baseWeaponInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
