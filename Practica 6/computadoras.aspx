<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="computadoras.aspx.cs" Inherits="front_end.computadoras" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SeleccionarCompusMantenimientos" TypeName="front_end.Computadoras.compusSoapClient"></asp:ObjectDataSource>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="id_co" HeaderText="id_co" SortExpression="id_co" />
                <asp:BoundField DataField="titulo_co" HeaderText="titulo_co" SortExpression="titulo_co" />
                <asp:BoundField DataField="fecha_co" HeaderText="fecha_co" SortExpression="fecha_co" />
                <asp:BoundField DataField="detalle_co" HeaderText="detalle_co" SortExpression="detalle_co" />               
                <asp:ImageField  DataImageUrlField="foto_co" HeaderText="foto_co" SortExpression="foto_co"/>
                <asp:BoundField DataField="mantenimientos" HeaderText="mantenimientos" SortExpression="mantenimientos"/>               
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
