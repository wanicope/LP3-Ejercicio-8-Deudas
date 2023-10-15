<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionDeudas.aspx.cs" Inherits="LP3_Ejercicio_8_Deudas.GestionDeudas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestion Deudas</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Gestion Deudas</h1>
        <div>
            <asp:Button ID="Button1" runat="server" OnClientClick="Menu.aspx" Text="Volver" OnClick="Button1_Click" />
            <br />
            <p>
                <asp:Label ID="Label1" runat="server" Text="Fecha: "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Monto: "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Cliente: "></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="id" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Button ID="Button5" runat="server" Text="Filtrar" OnClick="Button5_Click" />
                <asp:Button ID="Button6" runat="server" Text="Limpiar Filtro" OnClick="Button6_Click" />
            </p>
            <asp:Button ID="Button2" runat="server" Text="Agregar" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Modificar" OnClick="Button3_Click" />
            <asp:Button ID="Button4" runat="server" Text="Eliminar" OnClick="Button4_Click" />

            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                    <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="idCliente" HeaderText="idCliente" SortExpression="idCliente" />
                    <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT Deudas.id, Deudas.fecha, Deudas.idCliente, Deudas.monto, Acreedores.apellido, Acreedores.nombre FROM Deudas INNER JOIN Acreedores ON Deudas.idCliente = Acreedores.id"></asp:SqlDataSource>
        </div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString %>" SelectCommand="SELECT [id], [apellido], [nombre] FROM [Acreedores]" DeleteCommand="DELETE FROM Deudas WHERE [id] = @id" InsertCommand="INSERT INTO Deudas(fecha, idCliente, monto) VALUES (@fecha,@idCliente,@monto)" UpdateCommand="UPDATE [Deudas] SET [fecha] = @fecha, [monto] = @monto, [idCliente] = @idCliente WHERE [id] = @id">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="fecha" PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="idCliente" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox2" Name="monto" PropertyName="Text" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="fecha" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox2" Name="monto" PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="idCliente" PropertyName="SelectedValue" />
                    </UpdateParameters>
        </asp:SqlDataSource>
                
    </form>
</body>
</html>
