﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductosVer.aspx.cs" Inherits="GesTienda.ProductosVer" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <div class="contenidotitulo">Productos</div>
    <br />

    <div>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </div>
    <br />
    <div class="mensajes">
    <asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label>

    </div>
    <br />
    <br />
</asp:Content>
