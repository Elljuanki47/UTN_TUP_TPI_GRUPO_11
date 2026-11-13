<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioAdmin.aspx.cs" Inherits="Vistas.Administrador.InicioAdmin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clínica - Inicio administrador</title>
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
        <h2>Panel del administrador</h2>
        <p>
            <asp:HyperLink ID="hlPacientes" runat="server" NavigateUrl="~/Administrador/ListadoPacientes.aspx">Pacientes</asp:HyperLink><br />
            <asp:HyperLink ID="hlMedicos" runat="server" NavigateUrl="~/Administrador/ListadoMedicos.aspx">Médicos</asp:HyperLink><br />
            <asp:HyperLink ID="hlTurnos" runat="server" NavigateUrl="~/Administrador/AsignarTurno.aspx">Asignar turno</asp:HyperLink><br />
            <asp:HyperLink ID="hlInformes" runat="server" NavigateUrl="~/Administrador/Informes.aspx">Informes</asp:HyperLink>
        </p>
    </form>
</body>
</html>