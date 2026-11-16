<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarPaciente.aspx.cs" Inherits="Vistas.Administrador.ModificarPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
                <div>
            <asp:Label ID="lblUsuario" runat="server" Text="Usuario: (sin sesión)"></asp:Label>
            &nbsp;|&nbsp;
            <asp:HyperLink ID="hlInicio" runat="server" NavigateUrl="~/Administrador/InicioAdmin.aspx">Inicio</asp:HyperLink>
            &nbsp;|&nbsp;
            <asp:HyperLink ID="hlSalir" runat="server" NavigateUrl="~/Login.aspx">Cerrar sesión</asp:HyperLink>
        </div>
        <hr />
        <div>
        </div>
    </form>
</body>
</html>
