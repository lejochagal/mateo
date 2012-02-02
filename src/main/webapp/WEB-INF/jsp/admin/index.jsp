<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title><s:message code="admin.label" /></title>
    </head>
    <body>
        <nav class="navbar navbar-fixed-top" role="navigation">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="i-bar"></span>
                        <span class="i-bar"></span>
                        <span class="i-bar"></span>
                    </a>
                    <a class="brand" href="<c:url value='/inicio' />"><s:message code="proyecto.nombre.label" /></a>
                    <div class="nav-collapse">
                        <ul class="nav">
                            <li><a href="<c:url value='/inicio' />"><s:message code="inicio.label" /></a></li>
                            <li><a href="<c:url value='/contabilidad' />"><s:message code="contabilidad.label" /></a></li>
                            <li><a href="<c:url value='/inventario' />"><s:message code="inventario.label" /></a></li>
                            <li class="active"><a href="<c:url value='/admin' />"><s:message code="admin.label" /></a></li>
                        </ul>
                        <p class="navbar-text pull-right"><s:message code="mensaje.bienvenida" /> <a href="<c:url value='/perfil' />"><%= request.getUserPrincipal().getName()%></a></p>
                        <p class="navbar-text pull-right" style="padding-right: 10px;"><a href="<c:url value='/perfil' />">${sessionScope.organizacion} | ${sessionScope.empresa} | ${sessionScope.almacen}</a></p>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </nav>
        <header class="subnav-fixed" id="admin" role="subnavigation">
            <ul class="nav nav-pills">
                <li><a href="<s:url value='/admin/cliente'/>" ><s:message code="cliente.label" /></a></li>
                <li><a href="<s:url value='/admin/tipoCliente'/>" ><s:message code="tipoCliente.label" /></a></li>
                <li><a href="<s:url value='/admin/proveedor'/>" ><s:message code="proveedor.label" /></a></li>
                <li><a href="<s:url value='/admin/empresa'/>" ><s:message code="empresa.label" /></a></li>
                <li><a href="<s:url value='/admin/organizacion'/>" ><s:message code="organizacion.label" /></a></li>
                <li><a href="<s:url value='/admin/usuario'/>" ><s:message code="usuario.label" /></a></li>
            </ul>
        </header>
        <h1><s:message code="admin.label" /></h1>

    </body>
</html>
