<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="servicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crud</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:formview runat="server" DataSourceID="ObjectDataSource1" AllowPaging="True">
            <EditItemTemplate>
                <br />
                detalle_co:
                <asp:TextBox ID="detalle_coTextBox" runat="server" Text='<%# Bind("detalle_co") %>' />
                <br />
                fecha_co:
                <asp:TextBox ID="fecha_coTextBox" runat="server" Text='<%# Bind("fecha_co") %>' />
                <br />
                foto_co:
                <asp:TextBox ID="foto_coTextBox" runat="server" Text='<%# Bind("foto_co") %>' />
                <br />
                id_co:
                <asp:TextBox ID="id_coTextBox" runat="server" Text='<%# Bind("id_co") %>' />
                <br />
                titulo_co:
                <asp:TextBox ID="titulo_coTextBox" runat="server" Text='<%# Bind("titulo_co") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                detalle_co:
                <asp:TextBox ID="detalle_coTextBox" runat="server" Text='<%# Bind("detalle_co") %>' />
                <br />
                foto_co:
                <asp:TextBox ID="foto_coTextBox" runat="server" Text='<%# Bind("foto_co") %>' />
                <br />
                titulo_co:
                <asp:TextBox ID="titulo_coTextBox" runat="server" Text='<%# Bind("titulo_co") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                detalle_co:
                <asp:Label ID="detalle_coLabel" runat="server" Text='<%# Bind("detalle_co") %>' />
                <br />
                fecha_co:
                <asp:Label ID="fecha_coLabel" runat="server" Text='<%# Bind("fecha_co") %>' />
                <br />
                foto_co:
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("foto_co") %>' />
                <br />
                id_co:
                <asp:Label ID="id_coLabel" runat="server" Text='<%# Bind("id_co") %>' />
                <br />
                titulo_co:
                <asp:Label ID="titulo_coLabel" runat="server" Text='<%# Bind("titulo_co") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
        </asp:formview>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ServiceReference1.computadoras" DeleteMethod="Eliminar" InsertMethod="Insertar" SelectMethod="Seleccionar" TypeName="ServiceReference1.ServicioClient" UpdateMethod="Actualizar"></asp:ObjectDataSource>
    </form>
</body>
</html>
