<%@ Page Title="Empleados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleado.aspx.cs" Inherits="TareaProgramada3.WebPages.Empleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
        <asp:Button ID="Button1" runat="server" Text="Insertar"/>
        &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Confirmar Cambios" OnClick="Button2_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Borrar" />
    <br />
    <br />   
    <table style="width:100%;">
        <tr>
            <td class="modal-sm" style="width: 109px">Nombre</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px; height: 23px;">Tipo ID</td>
            <td style="height: 23px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px; height: 22px;">Valor ID</td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">Fecha Nacimiento</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">Puesto</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px; height: 22px;">Departamento</td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ValorDocumentoIdentificacion" DataSourceID="SqlDataEmpleado" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="1170px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="IdTipoIdentificacion" HeaderText="IdTipoIdentificacion" SortExpression="IdTipoIdentificacion" />
                <asp:BoundField DataField="ValorDocumentoIdentificacion" HeaderText="ValorDocumentoIdentificacion" ReadOnly="True" SortExpression="ValorDocumentoIdentificacion" />
                <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
                <asp:BoundField DataField="Puesto" HeaderText="Puesto" SortExpression="Puesto" />
                <asp:BoundField DataField="IdDepartamento" HeaderText="IdDepartamento" SortExpression="IdDepartamento" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataEmpleado" runat="server" ConnectionString="<%$ ConnectionStrings:TareaDosConexionPuesto %>" SelectCommand="spListarEmpleados" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
        
    </asp:Content>
