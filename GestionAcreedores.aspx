<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionAcreedores.aspx.cs" Inherits="LP3_Ejercicio_8_Deudas.GestionAcreedores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestion Acreedores</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Gestion Acreedores</h1>
        <div>
            <asp:Button ID="Button1" runat="server" OnClientClick="Menu.aspx" Text="Volver" OnClick="Button1_Click" />
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Ingrese Apellido: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Ingrese Nombre: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button2" runat="server" Text="Agregar" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Modificar" />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Eliminar" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT [id], [apellido], [nombre] FROM [Acreedores]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" DeleteCommand="DELETE FROM Acreedores WHERE [id] = @id" InsertCommand="INSERT INTO Acreedores(apellido, nombre) VALUES (@apellido,@nombre)" SelectCommand="SELECT * FROM [Acreedores]" UpdateCommand="UPDATE [Acreedores] SET [apellido] = @apellido, [nombre] = @nombre WHERE [id] = @id">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="apellido" />
                <asp:Parameter Name="nombre" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="" Name="id" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="" Name="apellido" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="nombre" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
