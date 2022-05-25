<%@ Page Title="Puestos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Puestos.aspx.cs" Inherits="TareaProgramada3.WebPages.Puestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
        <asp:Button ID="Button1" runat="server" Text="Insertar" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Confirmar Cambios" OnClick="Button2_Click"/>
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Borrar" style="margin-left: 20" />
    <br />
    <br />   
    <table style="width:100%;">
        <tr>
            <td class="modal-sm" style="width: 109px">Puesto</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">Salario por hora</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataPuesto" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="520px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="SalarioXHora" HeaderText="SalarioXHora" SortExpression="SalarioXHora" />
            </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataPuesto" runat="server" ConnectionString="<%$ ConnectionStrings:TareaDosConexionPuesto %>" SelectCommand="ListarPuestos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <br />
        

    </asp:Content>
