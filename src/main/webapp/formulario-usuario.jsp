<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>Gerenciamento de Usuários</title>
  <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
        crossorigin="anonymous">
</head>
<body>
<header>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div>
      <a href="" class="navbar-brand">Gerenciamento de Usuários</a>
    </div>
    <ul class="navbar-nav">
      <li><a href="<%=request.getContextPath()%>/listagem"
             class="nav-link">Usuários</a></li>
    </ul>
  </nav>
</header>
<br>
<div class="container col-md-5">
  <div class="card">
    <div class="card-body">
      <c:if test="${usuario != null}">
      <form action="atualizar" method="post">
        </c:if>
        <c:if test="${usuario == null}">
        <form action="inserir" method="post">
          </c:if>
          <caption>
            <h2>
              <c:if test="${usuario != null}">
                Editar Usuário
                <hr>
              </c:if>
              <c:if test="${usuario == null}">
                Adicionar Usuário
                <hr>
              </c:if>
            </h2>
          </caption>
          <c:if test="${usuario != null}">
            <input type="hidden" name="codigo"
                   value="<c:out value='${usuario.codigo}' />" />
          </c:if>
          <fieldset class="form-group">
            <label>Usuário</label> <input type="text"
                                          value="<c:out value='${usuario.nome}' />" class="form-control"
                                          name="nome" required="required">
          </fieldset>
          <fieldset class="form-group">
            <label>E-mail</label> <input type="text"
                                         value="<c:out value='${usuario.email}' />" class="form-control"
                                         name="email" required="required">
          </fieldset>
          <fieldset class="form-group">
            <label>País</label> <input type="text"
                                       value="<c:out value='${usuario.pais}' />" class="form-control"
                                       name="pais" required="required">
          </fieldset>
          <button type="submit" class="btn btn-success btn-sm">Salvar</button>
        </form>
    </div>
  </div>
</div>
</body>
</html>
