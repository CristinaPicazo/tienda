<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="GesTienda.ControlError" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <div class="contenidotitulo" style="text-align: center">Aplicación Web Gestienda</div>
    <div class="contenidosubtitulo" style="text-align: center">Error en tiempo de ejecución</div>
    <div>
        Error ASP.NET
        <asp:Label ID="lblErrorASP" runat="server" ForeColor="red" Text="lblErrorASP"></asp:Label>
    </div>
    <div>
        Error ADO.NET
        <asp:Label ID="lblErrorADO" runat="server" ForeColor="red" Text="lblErrorADO"></asp:Label>
    </div>
        </div>
    </form>
</body>
</html>
