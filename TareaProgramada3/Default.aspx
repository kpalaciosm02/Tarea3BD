<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TareaProgramada3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Registrarse</h1>
        <p class="lead">Por favor ingresar usuario y contraseña.</p>
        <p><a href="WebPages/Registro.aspx" class="btn btn-primary btn-lg">Registrarse &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Puestos</h2>
            <p>
                La página de puestos te permite crear, borrar y editar los puestos de la base de datos para luego poder
                usarlos en distintos empleados según las necesidades.
            </p>
            <p>
                <a class="btn btn-default" href="WebPages/Puestos.aspx" aria-disabled="False">Avanzado &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Empleados</h2>
            <p>
                La página de empleados está diseñada para poder borrar, editar y agregar empleados. Desde acá se podría, por ejemplo,
                cambiar el puesto de un empleado.
            </p>
            <p>
                <a class="btn btn-default" href="WebPages/Empleado.aspx" aria-disabled="True">Avanzado &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Asistencia</h2>
            <p>
                Desde está página se puede ver el reporte de asistencia de los empleados registrados.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950" aria-disabled="True">Avanzado »</a></p>
        </div>
    </div>

</asp:Content>
