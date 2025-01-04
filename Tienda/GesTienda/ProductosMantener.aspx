<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>

<%@ OutputCache Duration="1" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <div class="contenidotitulo">Mantenimiento productos</div>
    <div class="columna">
        <div class="columnas">
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
            <asp:GridView runat="server" ID="grdProductos" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" ReadOnly="True" SortExpression="IdProducto" />
                    <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
                    <asp:BoundField DataField="PrePro" HeaderText="Precio" SortExpression="PrePro" DataFormatString="{0:n2}">
                        <ItemStyle HorizontalAlign="Right" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UNIDAD]"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
        </div>
        <div class="columnas">
            <asp:Label runat="server" Text="Id. Producto" ID="lblIdProducto"></asp:Label>
            <asp:TextBox runat="server" ID="txtIdProducto" Enabled="False"></asp:TextBox>

            <asp:Label runat="server" Text="Descripción" ID="lblDesPro"></asp:Label>
            <asp:TextBox runat="server" ID="txtDesPro" Enabled="False"></asp:TextBox>

            <asp:Label runat="server" Text="Precio" ID="lblPrePro"></asp:Label>
            <asp:TextBox runat="server" ID="txtPrePro" Enabled="False">0</asp:TextBox>

            <asp:Label runat="server" Text="Unidad" ID="lblIdUnidad"></asp:Label>
            <asp:DropDownList runat="server" ID="ddlIdUnidad" Enabled="False" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad"></asp:DropDownList>

            <asp:Label runat="server" Text="Tipo Producto" ID="lblIdTipo"></asp:Label>
            <asp:DropDownList runat="server" ID="ddlIdTipo" Enabled="False" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo"></asp:DropDownList>
            <asp:Button runat="server" Text="Nuevo" ID="btnNuevo" OnClick="btnNuevo_Click" />
            <asp:Button runat="server" Text="Editar" ID="btnEditar" Visible="False" OnClick="btnEditar_Click" />
            <asp:Button runat="server" Text="Eliminar" ID="btnEliminar" Visible="False" OnClick="btnEliminar_Click" />
            <asp:Button runat="server" Text="Insertar" ID="btnInsertar" Visible="False" OnClick="btnInsertar_Click" />
            <asp:Button runat="server" Text="Modificar" ID="btnModificar" Visible="False" OnClick="btnModificar_Click" />
            <asp:Button runat="server" Text="Borrar" ID="btnBorrar" Visible="False" />
            <asp:Button runat="server" Text="Cancelar" ID="btnCancelar" Visible="False" OnClick="btnCancelar_Click" />
        </div>
    </div>
    <div>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </div>
    <br />
    <asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label>
</asp:Content>
