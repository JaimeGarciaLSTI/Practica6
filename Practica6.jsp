<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Al hacer click en el botón ingresar
            if (request.getParameter("btn_ingresar") != null) 
            {
                //Crea dos strings, una para el user y otra para el password.
                String username = request.getParameter("txt_username");
                String password = request.getParameter("txt_password");
                
                //Si ambas son "admin"...
                if (username.equals("admin")&&password.equals("admin"))
                {
                    //Redirecciona al servlet 'crear_departamento.do'
                    response.sendRedirect("crear_departamento.do");
                }
                //Si no...
                else
                {
                    //Muestra un mensaje javascript señalando que hay daros erróneos
                    out.println("<script>alert('Usuario o contraseña incorrecta');</script>");
                }
            }
        %>
    <center>
        <div style=""font-family: sans-serif">
            <h2> Banco notNull </h2>
            <h3 style="font-family:sans-serif">Ingreso administrador</h3>
            <form action="index.jsp" method="POST">
                <table border="1" style="font-family:sans-serif">
                    <tbody>
                        <tr>
                            <td>Usuario</td>
                            <td><input type="text" name="txt_username" value="" /></td>
                        </tr>
                        <tr>
                            <td>Contraseña</td>
                            <td><input type="password" name="txt_password" value="" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Ingresar" name="btn_ingresar" /></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <hr>
        </center>
    </body>
</html>