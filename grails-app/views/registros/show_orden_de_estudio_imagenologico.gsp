<html>
  <head>
    <meta name="layout" content="main" />
    <title>Registro de orden de estudio imagenologico</title>
    <style>
      body {
        padding: 10px;
        margin-top: 10px;
      }
      h1 {
        border-bottom: 1px solid #DFDFDF;
        padding-bottom: 5px;
      }
      .content {
        padding: 10px;
        margin: 0 22%; /* centra la tabla */
      }
      table {
        border: 0;
      }
      tr > td:first-child {
      text-align: right;
      }
      tr:last-child td {
      /*text-align: center;*/
      }
      input[type=radio] {
      margin: 0 5px 0 0;
      }
      input[readonly=readonly] {
      border: 0;
      background: none;
      }
      label {
      margin: 0 5px 0 5px;
      }
      .units_constraint {
      display: none;
      }
      span.code {
      color: #bbb;
      }
    </style>
    
    <g:javascript src="jquery-1.8.2.min.js" />
    <g:javascript>
    $(document).ready(function() {
      
    });
    </g:javascript>
  </head>
  <body>
    <div class="nav" role="navigation">
      <ul>
        <li><g:link class="list" controller="registros" action="list">Registros</g:link></li>
      </ul>
    </div>
  
    <h1>Registro de orden de estudio imagenologico</h1>

    <div class="content">
      <table>
        <%--
        <g:set var="node" value="${archetype.node( bindings['create_orden_de_estudio_imagenologico']['categoria_estudio'])}" />
        --%>
        <tr>
          <td>Categoria:</td>
          <td>
            ${doc.bindData[ bindings['create_orden_de_estudio_imagenologico']['categoria_estudio_texto'] ]}
            <span class="code">${doc.bindData[ bindings['create_orden_de_estudio_imagenologico']['categoria_estudio'] ]}</span>
          </td>
        </tr>
        
        <%--
        <g:set var="node" value="${archetype.node( bindings['create_orden_de_estudio_imagenologico']['tipo_estudio_texto'])}" />
        --%>
        <tr>
          <td>Tipo de estudio:</td>
          <td>
            ${doc.bindData[ bindings['create_orden_de_estudio_imagenologico']['tipo_estudio_texto'] ]}
            <span class="code">${doc.bindData[ bindings['create_orden_de_estudio_imagenologico']['tipo_estudio'] ]}</span>
          </td>
        </tr>
        
        <%--
        <g:set var="node" value="${archetype.node( bindings['create_orden_de_estudio_imagenologico']['localizacion_anatomica'])}" />
        --%>
        <tr>
          <td>Localización anatómica:</td>
          <td>
            ${doc.bindData[ bindings['create_orden_de_estudio_imagenologico']['localizacion_anatomica_texto'] ]}
            <span class="code">${doc.bindData[ bindings['create_orden_de_estudio_imagenologico']['localizacion_anatomica'] ]}</span>
          </td>
        </tr>
        
        <%--
        <g:set var="node" value="${archetype.node( bindings['create_orden_de_estudio_imagenologico']['urgente'])}" />
        --%>
        <tr>
          <td>¿Es urgente?:</td>
          <td>
            <%-- FIXME: render de boolean debe ser i18n --%>
            <g:if test="${doc.bindData[ bindings['create_orden_de_estudio_imagenologico']['urgente'] ]}">
              Si
            </g:if>
            <g:else>
              No
            </g:else>
          </td>
        </tr>
        
        <%--
        <g:set var="node" value="${archetype.node( bindings['create_orden_de_estudio_imagenologico']['descripcion'])}" />
        --%>
        <tr>
          <td>Descripcion:</td>
          <td>
            ${doc.bindData[ bindings['create_orden_de_estudio_imagenologico']['descripcion'] ]}
          </td>
        </tr>
        
        <%--
        <g:set var="node" value="${archetype.node( bindings['create_orden_de_estudio_imagenologico']['fecha_espera'])}" />
        --%>
        <tr>
          <td>Fecha esperada del resultado:</td>
          <td>
            <%-- FIXME: formatear segun configuracion de i18n del Congif.groovy --%>
            ${doc.bindData[ bindings['create_orden_de_estudio_imagenologico']['fecha_espera'] ]}
          </td>
        </tr>
      </table>

    </div>
  </body>
</html>