<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoMedicos.aspx.cs" Inherits="Vistas.Administrador.ListadoMedicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listado de médicos</title>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:Label ID="lblUsuario" runat="server" Text="Usuario: (sin sesión)" Font-Size="12pt" Font-Bold="True"></asp:Label>
            &nbsp;|&nbsp;
            <asp:HyperLink ID="hlInicio" runat="server" NavigateUrl="~/Administrador/InicioAdmin.aspx" Font-Size="12pt" Font-Bold="True">Inicio</asp:HyperLink>
            &nbsp;|&nbsp;
            <asp:HyperLink ID="hlSalir" runat="server" NavigateUrl="~/Login.aspx" Font-Size="12pt" Font-Bold="True">Cerrar sesión</asp:HyperLink>
        </div>

        <hr />

        <div>

            <h1>Listado de Médicos</h1>

            <asp:Button ID="btnAgregarMedico" runat="server"
                Text="Agregar Médico"
                Width="160px"
                Font-Size="12pt"
                PostBackUrl="~/Administrador/AgregarMedico.aspx" />

            <br />
            <br />

            <table>

                <tr>
                    <td>
                        <asp:Label ID="lblBuscar" runat="server" Text="Buscar por DNI:" Font-Size="14pt"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtDniBuscar" runat="server" Width="180px"></asp:TextBox>
                    </td>

                    <td>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="120px" Font-Size="12pt" />
                    </td>

                    <td>
                        <asp:Button ID="btnMostrarTodos" runat="server" Text="Mostrar Todos" Width="120px" Font-Size="12pt" />
                    </td>
                </tr>

            </table>

            <br />

            <asp:GridView ID="gvMedicos" runat="server"
                AutoGenerateColumns="False"
                CellPadding="10"
                Font-Size="14pt">

                <Columns>

                    <asp:BoundField DataField="Legajo"
                        HeaderText="LEGAJO"
                        ItemStyle-HorizontalAlign="Center" />

                    <asp:BoundField DataField="DNI"
                        HeaderText="DNI"
                        ItemStyle-HorizontalAlign="Center" />

                    <asp:BoundField DataField="Nombre"
                        HeaderText="NOMBRE"
                        ItemStyle-HorizontalAlign="Center" />

                    <asp:BoundField DataField="Apellido"
                        HeaderText="APELLIDO"
                        ItemStyle-HorizontalAlign="Center" />

                    <asp:BoundField DataField="Fecha de Nacimiento"
                        HeaderText="FECHA DE NACIMIENTO"
                        ItemStyle-HorizontalAlign="Center" />

                    <asp:BoundField DataField="Especialidad"
                        HeaderText="ESPECIALIDAD"
                        ItemStyle-HorizontalAlign="Center" />

                    <asp:BoundField DataField="Telefono"
                        HeaderText="TELÉFONO"
                        ItemStyle-HorizontalAlign="Center" />

                    <asp:BoundField DataField="Email"
                        HeaderText="EMAIL"
                        ItemStyle-HorizontalAlign="Center" />

                    <asp:BoundField DataField="Horario"
                        HeaderText="DIAS Y HORARIO DE ATENCIÓN"
                        ItemStyle-HorizontalAlign="Center" />

                    <asp:ButtonField Text="MODIFICAR"
                        HeaderText="MODIFICAR"
                        ItemStyle-HorizontalAlign="Center" />

                </Columns>

            </asp:GridView>

            <br />

            <asp:Label ID="lblMensaje" runat="server"></asp:Label>

        </div>

    </form>

</body>

</html>
