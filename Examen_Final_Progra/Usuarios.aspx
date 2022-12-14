<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Examen_Final_Progra.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Menu.css" rel="stylesheet" />
    <link href="CSS/objects.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style7 {
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor2">

    
    <p>
        <br />
    </p>
        <h1 class="auto-style7">
            Usuarios</h1>
    <p>
        <span class="auto-style8"><strong>Usuario:</strong></span>
        <asp:TextBox class="input2" ID="Tusuario" runat="server"></asp:TextBox>
    </p>
    <p>
        <span class="auto-style8"><strong>Clave:</strong></span>&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="input2" ID="Tclave" runat="server"></asp:TextBox>
    </p>
        <asp:GridView class="grid" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="IdUsuario" HeaderText="ID" ReadOnly="True" SortExpression="IdUsuario" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            </Columns>
            <RowStyle CssClass="RowStyle" />
    <EmptyDataRowStyle CssClass="EmptyRowStyle" />
    <PagerStyle CssClass="PagerStyle" />
    <SelectedRowStyle CssClass="SelectedRowStyle" />
    <HeaderStyle CssClass="HeaderStyle" />
    <EditRowStyle CssClass="EditRowStyle" />
    <AlternatingRowStyle CssClass="AltRowStyle" />
        </asp:GridView>
    <p>
        <span class="auto-style8"><strong>Nombre:</strong></span>
        <asp:TextBox class="input2" ID="Tnombre" runat="server"></asp:TextBox>
    </p>
    <p>
        <span class="auto-style8"><strong>Apellido:</strong></span><asp:TextBox class="input2" ID="Tapellido" runat="server"></asp:TextBox>
    </p>
    <p>
        <span class="auto-style8"><strong>ID:</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="input2" ID="Tid" runat="server"></asp:TextBox>
    </p>
<p>
        <asp:Label ID="Lmensaje" runat="server" ForeColor="Red"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VehiculosConnectionString %>" DeleteCommand="DELETE FROM [Usuarios] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuarios] ([Usuario], [Clave], [Nombre], [Apellido]) VALUES (@Usuario, @Clave, @Nombre, @Apellido)" ProviderName="<%$ ConnectionStrings:VehiculosConnectionString.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Usuario], [Clave], [Nombre], [Apellido] FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [Usuario] = @Usuario, [Clave] = @Clave, [Nombre] = @Nombre, [Apellido] = @Apellido WHERE [IdUsuario] = @IdUsuario">
            <DeleteParameters>
                <asp:Parameter Name="IdUsuario" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Clave" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Clave" Type="String" />
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Apellido" Type="String" />
                <asp:Parameter Name="IdUsuario" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button class="button" ID="Bagregar" runat="server" Text="Agregar" OnClick="Bagregar_Click" />
&nbsp;
        <asp:Button class="button" ID="Bborrar" runat="server" Text="Borrar" OnClick="Bborrar_Click" />
&nbsp;
        <asp:Button class="button" ID="Bmodificar" runat="server" Text="Modificar" OnClick="Bmodificar_Click" />
    </p>
    </div>
</asp:Content>
