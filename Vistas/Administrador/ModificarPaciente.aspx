<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarPaciente.aspx.cs" Inherits="Vistas.Administrador.ModificarPaciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 200px;
        }

        .auto-style1 td {
            padding-top: 4px;
            padding-bottom: 4px;
        }
    </style>

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

            <h1>Modificar Paciente</h1>

            <asp:Label ID="lblSeleccionPaciente" runat="server" Text="Seleccione el DNI del paciente a modificar:" Font-Size="12pt"></asp:Label>

            <asp:DropDownList ID="ddlPacientes" runat="server" Width="150px" Font-Size="12pt"></asp:DropDownList>

            <table class="auto-style1">

                <tr>
                    <td colspan="2">
                    <br />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblDni" runat="server" Text="DNI:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtDni" runat="server" Width="220px" Font-Size="12pt"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblNombre" runat="server" Text="Nombre:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtNombre" runat="server" Width="220px" Font-Size="12pt"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblApellido" runat="server" Text="Apellido:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtApellido" runat="server" Width="220px" Font-Size="12pt"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblSexo" runat="server" Text="Sexo:" Font-Size="12pt"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlSexo" runat="server" Width="228px" Font-Size="12pt">
                            <asp:ListItem Text="Masculino"></asp:ListItem>
                            <asp:ListItem Text="Femenino"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblNacionalidad" runat="server" Text="Nacionalidad:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtNacionalidad" runat="server" Width="220px" Font-Size="12pt"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de nacimiento:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date" Width="223px" Font-Size="12pt"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblDireccion" runat="server" Text="Dirección:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtDireccion" runat="server" Width="220px" Font-Size="12pt"></asp:TextBox></td>
                </tr>
 
                <tr>
                    <td class="auto-style2"><asp:Label ID="lblLocalidad" runat="server" Text="Localidad:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtLocalidad" runat="server" Width="220px" Font-Size="12pt"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblProvincia" runat="server" Text="Provincia:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtProvincia" runat="server" Width="220px" Font-Size="12pt"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblEmail" runat="server" Text="Correo electrónico:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtEmail" runat="server" Width="220px" Font-Size="12pt"></asp:TextBox></td>
                </tr>

                <tr>
                    <td class="auto-style2"><asp:Label ID="lblTelefono" runat="server" Text="Teléfono:" Font-Size="12pt"></asp:Label></td>
                    <td><asp:TextBox ID="txtTelefono" runat="server" Width="220px" Font-Size="12pt"></asp:TextBox></td>
                </tr>


                <tr>
                    <td></td>
                    <td>
                    <br />
                        <asp:Button ID="btnGuardarCambios" runat="server" Text="Guardar Cambios" Font-Size="12pt"/>
                    </td>
                </tr>

            </table>

            <br />

            <asp:Label ID="lblMensaje" runat="server"></asp:Label>

        </div>

    </form>

</body>

</html>
