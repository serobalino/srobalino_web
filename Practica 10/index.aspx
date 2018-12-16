<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="consumo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Seleccionar" TypeName="ServiceReference1.ServicioClient"></asp:ObjectDataSource>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="detalle_co" HeaderText="detalle" SortExpression="detalle_co" />
                <asp:BoundField DataField="fecha_co" HeaderText="fecha" SortExpression="fecha_co" />
                <asp:ImageField  DataImageUrlField="foto_co" HeaderText="imagen" SortExpression="foto_co"/>
                <asp:BoundField DataField="id_co" HeaderText="id" SortExpression="id_co" />
                <asp:BoundField DataField="titulo_co" HeaderText="titulo" SortExpression="titulo_co" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
