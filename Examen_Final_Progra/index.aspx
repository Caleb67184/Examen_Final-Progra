<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Examen_Final_Progra.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/style.css" rel="stylesheet" />
</head>
<body>
     <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form runat="server">
        <h3>Vehiculos</h3>
        <label class="espacio" for="username">Usuario</label>
        <asp:TextBox class="input" ID="username" runat="server"></asp:TextBox>

        <label for="password">Contraseña</label>
        <asp:TextBox class="input" ID="password" runat="server" TextMode="Password"></asp:TextBox>

        <asp:Label ID="Lmensaje" runat="server" ForeColor="Red"></asp:Label>
        <asp:Button class="button" ID="Blogin" runat="server" Text="Ingresar" OnClick="Bingresar_Click" />

    </form>
</body>
</html>
