<%@ page import="com.tiem625.tankarena.model.tank.TankEngine" %>



<div class="fieldcontain ${hasErrors(bean: tankEngineInstance, field: 'acceleration', 'error')} ">
	<label for="acceleration">
		<g:message code="tankEngine.acceleration.label" default="Acceleration" />
		
	</label>
	<g:field type="number" name="acceleration" value="${tankEngineInstance.acceleration}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankEngineInstance, field: 'deacceleration', 'error')} ">
	<label for="deacceleration">
		<g:message code="tankEngine.deacceleration.label" default="Deacceleration" />
		
	</label>
	<g:field type="number" name="deacceleration" value="${tankEngineInstance.deacceleration}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankEngineInstance, field: 'idleSoundPath', 'error')} ">
	<label for="idleSoundPath">
		<g:message code="tankEngine.idleSoundPath.label" default="Idle Sound Path" />
		
	</label>
	<g:textField name="idleSoundPath" value="${tankEngineInstance?.idleSoundPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankEngineInstance, field: 'revvingSoundPath', 'error')} ">
	<label for="revvingSoundPath">
		<g:message code="tankEngine.revvingSoundPath.label" default="Revving Sound Path" />
		
	</label>
	<g:textField name="revvingSoundPath" value="${tankEngineInstance?.revvingSoundPath}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankEngineInstance, field: 'topSpeed', 'error')} ">
	<label for="topSpeed">
		<g:message code="tankEngine.topSpeed.label" default="Top Speed" />
		
	</label>
	<g:field type="number" name="topSpeed" value="${tankEngineInstance.topSpeed}" />

</div>

<div class="fieldcontain ${hasErrors(bean: tankEngineInstance, field: 'torque', 'error')} ">
	<label for="torque">
		<g:message code="tankEngine.torque.label" default="Torque" />
		
	</label>
	<g:field type="number" name="torque" value="${tankEngineInstance.torque}" />

</div>

