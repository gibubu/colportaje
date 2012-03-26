<%-- 
    Document   : nueva
    Created on : 14-mar-2012, 11:27:43
    Author     : gibrandemetrioo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <title><s:message code="asociado.nuevo.label" /></title>
    </head>
    <body>
        <nav class="navbar navbar-fixed-top" role="navigation">
            <ul class="nav">
                <li><a href="<c:url value='/inicio' />"><s:message code="inicio.label" /></a></li>

                <li class="active"><a href="<s:url value='/web/asociado'/>" ><s:message code="asociado.label" /></a></li>

            </ul>
        </nav>

        <div id="nueva-asociado" class="content scaffold-list" role="main">
            <h1><s:message code="asociado.nuevo.label" /></h1>
            <p class="well">
                <a class="btn btn-primary" href="<s:url value='/web/asociado'/>"><i class="icon-list icon-white"></i> <s:message code='asociado.lista.label' /></a>
            </p>
            <form:form commandName="asociado" action="crea" method="post">
                <form:errors path="*">
                    <div class="alert alert-block alert-error fade in" role="status">
                        <a class="close" data-dismiss="alert">×</a>
                        <c:forEach items="${messages}" var="message">
                            <p>${message}</p>
                        </c:forEach>
                    </div>
                </form:errors>

                <fieldset>
                    <s:bind path="asociado.nombre">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                                <label for="nombre">
                                <s:message code="nombre.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="nombre" maxlength="128" required="true" />
                            <form:errors path="nombre" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    <s:bind path="asociado.clave">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                                <label for="clave">
                                <s:message code="clave.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="clave" maxlength="128" required="true" />
                            <form:errors path="clave" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    <s:bind path="asociado.direccion">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                                <label for="direccion">
                                <s:message code="direccion.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="direccion" maxlength="128" required="true" />
                            <form:errors path="direccion" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    <s:bind path="asociado.telefono">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                                <label for="telefono">
                                <s:message code="telefono.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="telefono" maxlength="128" required="true" />
                            <form:errors path="telefono" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    <s:bind path="asociado.status">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                                <label for="status">
                                <s:message code="status.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="status" maxlength="128" required="true" />
                            <form:errors path="status" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    <s:bind path="asociado.correo">
                        <div class="control-group <c:if test='${not empty status.errorMessages}'>error</c:if>">
                                <label for="correo">
                                <s:message code="correo.label" />
                                <span class="required-indicator">*</span>
                            </label>
                            <form:input path="correo" maxlength="128" required="true" />
                            <form:errors path="correo" cssClass="alert alert-error" />
                        </div>
                    </s:bind>
                    
                </fieldset>


                <p class="well" style="margin-top: 10px;">
                    <input type="submit" name="_action_crea" class="btn btn-primary btn-large" value="<s:message code='crear.button'/>" id="crea" />
                </p>
            </form:form>
        </div>
    <content>
        <script>
            $(document).ready(function() {
                $('input#nombre').focus();
            });
        </script> 
    </content>
</body>
</html>