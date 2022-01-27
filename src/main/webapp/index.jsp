<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map" %>
<%
    Map<String, String> errores = (Map<String, String>)request.getAttribute("errores");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <h3>Formulario de Usuarios</h3>
    <%
        if(errores != null && errores.size()>0) {
    %>
    <ul class="alert alert-danger">
        <% for(String error: errores.values()) {%>
        <li><%=error%></li>
        <%}%>
    </ul>
    <%
        }
    %>
    <form action="/webapp-form/registro" method="post">
        <div class="row mb-3">
            <label for="username" class="col-form-label col-sm-2">Usuario</label>
            <div class="col-sm-4">
                <input type="text" name="username" id="username" class="form-control">
            </div>
            <%
                if(errores != null && errores.containsKey("username")) {
                    out.println("<small class='alert alert-danger col-sm-4' style='color: red;'>" + errores.get("username") + "</small>");
                }
            %>
        </div>
        <div class="row mb-3">
            <label for="password" class="col-form-label col-sm-2">Contraseña</label>
            <div class="col-sm-4">
                <input type="password" name="password" id="password" class="form-control">
            </div>
            <%
                if(errores != null && errores.containsKey("password")) {
                    out.println("<small class='alert alert-danger col-sm-4' style='color: red;'>" + errores.get("password") + "</small>");
                }
            %>
        </div>
        <div class="row mb-3">
            <label for="email" class="col-form-label col-sm-2">Correo Electrónico</label>
            <div class="col-sm-4">
                <input type="text" name="email" id="email" class="form-control">
            </div>
            <%
                if(errores != null && errores.containsKey("email")) {
                    out.println("<small class='alert alert-danger col-sm-4' style='color: red;'>" + errores.get("email") + "</small>");
                }
            %>
        </div>
        <div class="row mb-3">
            <label for="pais" class="col-form-label col-sm-2">País</label>
            <div class="col-sm-4">
                <select name="pais" id="pais" class="form-select">
                    <option value="">-- Seleccionar --</option>
                    <option value="AR">Argentina</option>
                    <option value="BO">Bolivia</option>
                    <option value="BR">Brasil</option>
                    <option value="CL">Chile</option>
                    <option value="CO">Colombia</option>
                    <option value="CR">Costa Rica</option>
                    <option value="MX" selected>México</option>
                </select>
            </div>
            <%
                if(errores != null && errores.containsKey("pais")) {
                    out.println("<small class='alert alert-danger col-sm-4' style='color: red;'>" + errores.get("pais") + "</small>");
                }
            %>
        </div>
        <div class="row mb-3">
            <label for="lenguajes" class="col-form-label col-sm-2">Lenguajes de programación</label>
            <div class="col-sm-4">
                <select name="lenguajes" id="lenguajes" multiple class="form-select">
                    <option value="java" selected>Java</option>
                    <option value="js">JavaScript</option>
                    <option value="cs" selected>C#</option>
                    <option value="plsql">Pl/Sql</option>
                    <option value="sql">Sql</option>
                    <option value="ts">TypeScript</option>
                    <option value="angular">Angular</option>
                    <option value="vue">Vue</option>
                    <option value="dotnet" selected>.Net</option>
                    <option value="springboot">SpringBoot</option>
                </select>
            </div>
            <%
                if(errores != null && errores.containsKey("lenguajes")) {
                    out.println("<small class='alert alert-danger col-sm-4' style='color: red;'>" + errores.get("lenguajes") + "</small>");
                }
            %>
        </div>
        <div class="row mb-3">
            <label class="col-form-label col-sm-2">Roles</label>
            <div>
                <div class="form-check">
                    <input type="checkbox" name="roles" value="ROLE_ADMIN" class="form-check-input">
                    <label class="form-check-label">Administrador</label>
                </div>
            </div>
            <div>
                <div class="form-check">
                    <input type="checkbox" name="roles" value="ROLE_USER" checked class="form-check-input">
                    <label class="form-check-label">Usuario</label>
                </div>
            </div>
            <div>
                <div class="form-check">
                    <input type="checkbox" name="roles" value="ROLE_MODERATOR" class="form-check-input">
                    <label class="form-check-label">Moderador</label>
                </div>
            </div>
            <%
                if(errores != null && errores.containsKey("roles")) {
                    out.println("<small class='alert alert-danger col-sm-4' style='color: red;'>" + errores.get("roles") + "</small>");
                }
            %>
        </div>

        <div class="row mb-3">
            <label class="col-form-label col-sm-2">Idiomas: </label>
            <div class="form-check">
                <input type="radio" name="idioma" value="es" class="form-check-input">
                <label class="form-check-label">Español</label>
            </div>
            <div class="form-check">
                <input type="radio" name="idioma" value="en" class="form-check-input">
                <label class="form-check-label">Inglés</label>
            </div>
            <div class="form-check">
                <input type="radio" name="idioma" value="fr" class="form-check-input">
                <label class="form-check-label">Francés</label>
            </div>
            <div class="form-check">
                <input type="radio" name="idioma" value="ge" class="form-check-input">
                <label class="form-check-label">Alemán</label>
            </div>
            <div class="form-check">
                <input type="radio" name="idioma" value="ru" class="form-check-input">
                <label class="form-check-label">Ruso</label>
            </div>
            <div class="form-check">
                <input type="radio" name="idioma" value="ch" class="form-check-input">
                <label class="form-check-label">Chino</label>
            </div>
            <%
                if(errores != null && errores.containsKey("idioma")) {
                    out.println("<small class='alert alert-danger col-sm-4' style='color: red;'>" + errores.get("idioma") + "</small>");
                }
            %>
        </div>
        <div class="row mb-3">
            <label for="habilitar" class="col-form-label col-sm-2">Habilitar</label>
            <div class="form-check">
                <input type="checkbox" name="habilitar" id="habilitar" checked class="form-check-input">
            </div>
        </div>
        <div class="row mb-3">
            <div>
                <input type="submit" value="Enviar" class="btn btn-primary">
            </div>
        </div>
        <input type="hidden" name="secreto" value="1234567890">
    </form>
</body>
</html>