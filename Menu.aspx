<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="LP3_Ejercicio_8_Deudas.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Menu Principal</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Menu Principal</h1>
        <div>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/GestionDeudas.aspx">Deudas</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/GestionAcreedores.aspx">Acreedores</asp:HyperLink>
        </div>
    </form>
</body>
</html>
