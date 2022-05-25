<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaCuenta.aspx.cs" Inherits="TareaProgramada3.WebPages.VistaCuenta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cuenta<br />
             <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Red" BorderColor="White" BorderStyle="Double" ForeColor="White" NavigateUrl="~/WebPages/InicioSesion.aspx">Cambiar usuario</asp:HyperLink>
        </div>
    </form>
</body>
</html>
