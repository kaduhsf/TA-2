<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="ta.Criterion" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'criterion.label', default: 'Criterion')}" />
    <title><g:message code="default.search.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-criterion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>

<div id="search-header">
    <h1>Search by Description</h1>
</div>
<div class="content scaffold-search" role="main">
    <g:form controller="criterion" action="consult">
        <div id="search_criterion">
            <label for="consult">
                <g:message code="criterion.description.label" default="Description" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="consult" required="" size="50"/>
            <g:submitButton name="search" value="${message(code: 'default.button.search.label', default: 'Search')}" size = "20" />
        </div>
    </g:form>
</div>

<div id="list-criterion" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'criterion.description.label', default: 'Name')}" />

        </tr>
        </thead>
        <tbody>
        <g:each in="${criterionInstanceList}" status="i" var="criterionInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${criterionInstance.id}">${fieldValue(bean: criterionInstance, field: "description")}</g:link></td>
       
            </tr>
        </g:each>
        </tbody>
    </table>
    <div class="pagination">
        <g:paginate total="${descriptionInstanceCount ?: 0}" />
    </div>
</div>
</body>
</html>