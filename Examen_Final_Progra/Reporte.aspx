<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="Examen_Final_Progra.Reporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Menu.css" rel="stylesheet" />
    <link href="CSS/objects.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style7 {
            color: #FFFFFF;
        }
        .auto-style8 {
            text-align: center;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contenedor">
    <p>
        <br />
    </p>
        <h1 class="auto-style8">
            Reporte</h1>
    <p>
        <span class="auto-style7"><strong>Número de placa:</strong></span>
        <asp:TextBox class="input2" ID="TnumPlaca" runat="server"></asp:TextBox>
        <asp:GridView class="grid" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="NumPlaca" HeaderText="Número Placa" SortExpression="NumPlaca" />
                <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
                <asp:BoundField DataField="IVA" HeaderText="IVA" ReadOnly="True" SortExpression="IVA" />
                <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
            </Columns>
            <RowStyle CssClass="RowStyle" />
    <EmptyDataRowStyle CssClass="EmptyRowStyle" />
    <PagerStyle CssClass="PagerStyle" />
    <SelectedRowStyle CssClass="SelectedRowStyle" />
    <HeaderStyle CssClass="HeaderStyle" />
    <EditRowStyle CssClass="EditRowStyle" />
    <AlternatingRowStyle CssClass="AltRowStyle" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VehiculosConnectionString %>" SelectCommand="reporte" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TnumPlaca" Name="NumPlaca" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
        <p>
            <strong>Escriba el número y presione Enter para ver el precio</strong></p>
</div>
</asp:Content>
