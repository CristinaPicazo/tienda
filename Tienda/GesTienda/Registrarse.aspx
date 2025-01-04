<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="GesTienda.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Registro</title>
    <link href="Estilos/HojaEstilo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="cabecera">
            <div id="cabecera1">
                <br />
                comerciodaw.com &nbsp;
            </div>
            <div id="cabecera2">
                <br />
                &nbsp;&nbsp;TIENDA ONLINE - SHOPPING DAW<br />
                <br />
            </div>
        </div>
        <div class="columna">
            <div class="contenidotitulo">GesTienda</div>
            <div class="contenidoSubTitulo">Registro de Usuario</div>
            <asp:Label ID="Label1" runat="server" Text="Correo Electrónico"></asp:Label>
            <asp:TextBox ID="txtCorCli" runat="server"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtPassword1" runat="server" TextMode="Password"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Introduzca nuevamente la Contraseña"></asp:Label>
            <asp:TextBox ID="txtPassword2" runat="server" TextMode="Password"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="NIF/NIE/CIF"></asp:Label>
            <asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>

            <asp:Label ID="Label5" runat="server" Text="Nombre/Razón Social"></asp:Label>
            <asp:TextBox ID="txtNomCli" runat="server"></asp:TextBox>

            <asp:Label ID="Label6" runat="server" Text="Dirección"></asp:Label>
            <asp:TextBox ID="txtDirCli" runat="server"></asp:TextBox>

            <asp:Label ID="Label7" runat="server" Text="Población"></asp:Label>
            <asp:TextBox ID="txtPobCli" runat="server"></asp:TextBox>

            <asp:Label ID="Label8" runat="server" Text="Código Postal"></asp:Label>
            <asp:TextBox ID="txtCpoCli" runat="server"></asp:TextBox>

            <asp:Label ID="Label9" runat="server" Text="Teléfono"></asp:Label>
            <asp:TextBox ID="txtTelCli" runat="server"></asp:TextBox>

            <asp:Button ID="btnInsertar" runat="server" Text="Insertar" OnClick="btnInsertar_Click" />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ir a Inicio</asp:LinkButton>

        </div>
  
        <div>
            <asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label>
        </div>
        <div id="pie">
            <br />
            <br />
            © Desarrollo de Aplicaciones Web interactivas con Acceso a Datos
                <br />
            IES Mare Nostrum (Alicante)
        </div>

    </form>
</body>
</html>
