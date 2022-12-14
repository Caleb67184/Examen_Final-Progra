<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Placas.aspx.cs" Inherits="Examen_Final_Progra.Placas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Menu.css" rel="stylesheet" />
    <link href="CSS/objects.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor">
    <p>
        &nbsp;</p>
        <h1 class="auto-style7">
            <span class="auto-style8">Placas</span><br />
    </h1>
    <p>
        <span class="auto-style8"><strong>Número Placa:
        </strong></span>
        <asp:TextBox class="input2" ID="TnumPlaca" runat="server"></asp:TextBox>
    </p>
        <asp:GridView class="grid" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlaca" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="IdPlaca" HeaderText="ID" ReadOnly="True" SortExpression="IdPlaca" />
                <asp:BoundField DataField="NumPlaca" HeaderText="Número Placa" SortExpression="NumPlaca" />
                <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
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
        <span class="auto-style8"><strong>ID:</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="input2" ID="Tid" runat="server"></asp:TextBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VehiculosConnectionString %>" DeleteCommand="DELETE FROM [Placa] WHERE [IdPlaca] = @IdPlaca" InsertCommand="INSERT INTO [Placa] ([NumPlaca], [IdUsuario], [Monto]) VALUES (@NumPlaca, @IdUsuario, @Monto)" ProviderName="<%$ ConnectionStrings:VehiculosConnectionString.ProviderName %>" SelectCommand="SELECT [IdPlaca], [NumPlaca], [IdUsuario], [Monto] FROM [Placa]" UpdateCommand="UPDATE [Placa] SET [NumPlaca] = @NumPlaca, [IdUsuario] = @IdUsuario, [Monto] = @Monto WHERE [IdPlaca] = @IdPlaca">
            <DeleteParameters>
                <asp:Parameter Name="IdPlaca" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NumPlaca" Type="String" />
                <asp:Parameter Name="IdUsuario" Type="Int32" />
                <asp:Parameter Name="Monto" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NumPlaca" Type="String" />
                <asp:Parameter Name="IdUsuario" Type="Int32" />
                <asp:Parameter Name="Monto" Type="Decimal" />
                <asp:Parameter Name="IdPlaca" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <span class="auto-style8"><strong>Monto:</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox class="input2" ID="Tmonto" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Lmensaje" runat="server" ForeColor="Red"></asp:Label>
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
