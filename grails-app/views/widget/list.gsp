
<%@ page import="com.demo.Widget" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'widget.label', default: 'Widget')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-widget" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="list-widget" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'widget.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="height" title="${message(code: 'widget.height.label', default: 'Height')}" />
					
						<g:sortableColumn property="width" title="${message(code: 'widget.width.label', default: 'Width')}" />

						<g:sortableColumn property="area" title="${message(code: 'widget.area.label', default: 'Area')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${widgetInstanceList}" status="i" var="widgetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: widgetInstance, field: "name")}</td>

						<td>${fieldValue(bean: widgetInstance, field: "height")}</td>
					
						<td>${fieldValue(bean: widgetInstance, field: "width")}</td>

						<td>${fieldValue(bean: widgetInstance, field: "area")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
