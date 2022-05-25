<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="TareaProgramada3.WebPages.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        &nbsp;&nbsp;&nbsp;
    &nbsp;<table style="width:23%;" class="nav-justified" >
        <tr>
            <td class="modal-sm" style="width: 109px; height: 20px;">Usuario</td>
            <td style="height: 20px; width: 121px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px; height: 22px;">Contraseña</td>
            <td style="width: 121px; height: 22px;">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
    </table>
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button2" runat="server" Text="Ingresar" OnClick="Button2_Click"/>
</asp:Content>
