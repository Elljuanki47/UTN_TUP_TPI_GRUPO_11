<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarPaciente.aspx.cs" Inherits="Vistas.Administrador.AgregarPaciente" %>

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
            <h2>Agregar paciente</h2>

            <table class="auto-style1">

                <tr>
                    <td>ID Paciente:</td>
                    <td>
                        <asp:TextBox ID="txtIdPaciente" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvId" runat="server"
                            ControlToValidate="txtIdPaciente"
                            ErrorMessage="El ID del paciente no puede quedar vacio"
                            ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>DNI:</td>
                    <td>
                        <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="rfvDni" runat="server"
                            ControlToValidate="txtDni"
                            ErrorMessage="El DNI no puede quedar vacio"
                            ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Nombre:</td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server"
                            ControlToValidate="txtNombre"
                            ErrorMessage="El nombre no puede quedar vacio"
                            ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Apellido:</td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvApellido" runat="server"
                            ControlToValidate="txtApellido"
                            ErrorMessage="El apellido no puede quedar vacio"
                            ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Sexo:</td>
                    <td>
                        <asp:DropDownList ID="ddlSexo" runat="server">
                            <asp:ListItem Text="-- Seleccione --" Value="0" />
                            <asp:ListItem Text="Masculino" Value="1" />
                            <asp:ListItem Text="Femenino" Value="2" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvSexo" runat="server"
                            ControlToValidate="ddlSexo"
                            InitialValue="0"
                            ErrorMessage="Debe seleccionar un sexo"
                            ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Nacionalidad:</td>
                    <td>
                        <asp:TextBox ID="txtNacionalidad" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server"
                            ControlToValidate="txtNacionalidad"
                            ErrorMessage="La nacionalidad no puede quedar vacia"
                            ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Fecha de nacimiento:</td>
                    <td>
                        <asp:TextBox ID="txtFechaNacimiento" runat="server" TextMode="Date"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvFecha" runat="server"
                            ControlToValidate="txtFechaNacimiento"
                            ErrorMessage="Debe seleccionar una fecha de nacimiento"
                            ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Dirección:</td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDireccion" runat="server"
                            ControlToValidate="txtDireccion"
                            ErrorMessage="La dirección no puede quedar vacia"
                            ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="El email no puede quedar vacio"
                            ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar paciente" CausesValidation="true"/>
                    </td>
                </tr>

            </table>

            <br />
            <asp:Label ID="lblMensaje" runat="server" />

        </div>
    </form>
</body>
</html>
