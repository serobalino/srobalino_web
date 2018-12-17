<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Personas</title>
</head>
<body>
    <div class="container">
        <div class="jumbotron jumbotron-fluid">
          <div class="container">
            <h1 class="display-4">Crud de Personas</h1>
            <p class="lead">Listado Editar Guardar Insertar.</p>
          </div>
        </div>
    <form id="form1" runat="server">
        <asp:formview runat="server" DataSourceID="ObjectDataSource1" AllowPaging="True">
            <EditItemTemplate>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Bibliografia:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="bio_peTextBox" class="form-control" TextMode="multiline" Columns="10" Rows="5" runat="server" Text='<%# Bind("bio_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">DNI:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="dni_peTextBox" class="form-control" runat="server" Text='<%# Bind("dni_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Correo electónico:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="email_peTextBox" class="form-control" runat="server" Text='<%# Bind("email_pe") %>' type="email" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Fecha de nacimiento:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="fecha_peTextBox" class="form-control" runat="server" Text='<%# Bind("fecha_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Avatar:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="foto_peTextBox" class="form-control" runat="server" Text='<%# Bind("foto_pe") %>' type="url" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Nombres:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="nombres_peTextBox" class="form-control" runat="server" Text='<%# Bind("nombres_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Web:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="web_peTextBox" class="form-control" runat="server" Text='<%# Bind("web_pe") %>' type="url" />
                    </div>
                </div>
                <asp:LinkButton ID="UpdateButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Bibliografia:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="bio_peTextBox" class="form-control" TextMode="multiline" Columns="10" Rows="5" runat="server" Text='<%# Bind("bio_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">DNI:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="dni_peTextBox" class="form-control" runat="server" Text='<%# Bind("dni_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Correo electónico:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="email_peTextBox" class="form-control" runat="server" Text='<%# Bind("email_pe") %>' type="email" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Fecha de nacimiento:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="fecha_peTextBox" class="form-control" runat="server" Text='<%# Bind("fecha_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Avatar:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="foto_peTextBox" class="form-control" runat="server" Text='<%# Bind("foto_pe") %>' type="url" />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Nombres:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="nombres_peTextBox" class="form-control" runat="server" Text='<%# Bind("nombres_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Web:</label>
                    <div class="col-sm-8">
                        <asp:TextBox ID="web_peTextBox" class="form-control" runat="server" Text='<%# Bind("web_pe") %>' type="url" />
                    </div>
                </div>
                <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insertar" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
            </InsertItemTemplate>
            <ItemTemplate>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Avatar:</label>
                    <div class="col-sm-8">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("foto_pe") %>'/>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Nombres:</label>
                    <div class="col-sm-8">
                        <asp:label ID="nombres_peTextBox"  class="form-control-plaintext"  runat="server" Text='<%# Bind("nombres_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">DNI:</label>
                    <div class="col-sm-8">
                        <asp:label ID="dni_peTextBox" class="form-control-plaintext"  runat="server" Text='<%# Bind("dni_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Correo electónico:</label>
                    <div class="col-sm-8">
                        <asp:HyperLink  ID="email_peTextBox"  class="form-control-plaintext" NavigateUrl='<%# Bind("email_pe") %>'  runat="server" Text='<%# Bind("email_pe") %>'  />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Fecha de nacimiento:</label>
                    <div class="col-sm-8">
                        <asp:label ID="fecha_peTextBox"  class="form-control-plaintext"  runat="server" Text='<%# Bind("fecha_pe") %>'  />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Bibliografia:</label>
                    <div class="col-sm-8">
                        <asp:label ID="bio_peTextBox" class="form-control-plaintext"  runat="server" Text='<%# Bind("bio_pe") %>' />
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-sm-4 col-form-label">Web:</label>
                    <div class="col-sm-8">
                        <asp:HyperLink  ID="web_peTextBox"  class="form-control-plaintext" NavigateUrl='<%# Bind("web_pe") %>' runat="server" Text='<%# Bind("web_pe") %>' type="url" />
                    </div>
                </div>
                <asp:LinkButton ID="EditButton" CssClass="btn btn-dark" runat="server" CausesValidation="False" CommandName="Edit" Text="Editar" />
                &nbsp;<asp:LinkButton ID="DeleteButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" />
                &nbsp;<asp:LinkButton ID="NewButton" CssClass="btn btn-primary" runat="server" CausesValidation="False" CommandName="New" Text="Nuevo" />
            </ItemTemplate>
        </asp:formview>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="ServiceReference1.personas" DeleteMethod="Eliminar" InsertMethod="Insertar" SelectMethod="Seleccionar" TypeName="ServiceReference1.ServiceClient" UpdateMethod="Actualizar"></asp:ObjectDataSource>
    </form>
    </div>
</body>
</html>
