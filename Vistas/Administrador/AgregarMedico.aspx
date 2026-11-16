<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarMedico.aspx.cs" Inherits="Vistas.Administrador.AgregarMedico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 147px;
        }
        .auto-style3 {
            width: 143px;
        }
        .auto-style4 {
            width: 143px;
            height: 24px;
        }
        .auto-style5 {
            width: 147px;
            height: 24px;
        }
        .auto-style7 {
            height: 24px;
        }
        .auto-style8 {
            width: 156px;
        }
        .auto-style9 {
            height: 24px;
            width: 156px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Agregar medico</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Nombre:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese el nombre." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Apellido:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Ingrese el apellido." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">DNI:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
                &nbsp; </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="txtDni" ErrorMessage="Ingrese el DNI." ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revDni" runat="server" ControlToValidate="txtDni" ErrorMessage="El DNI debe tener 7 u 8 digitos." ForeColor="Red" ValidationExpression="^\d{7,8}$"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Especialidad:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlEspecialidad" runat="server">
                        <asp:ListItem Text="-- Seleccione --" Value="0" />
                            <asp:ListItem Text="Clínica médica" Value="1" />
                            <asp:ListItem Text="Cardiología" Value="2" />
                            <asp:ListItem Text="Pediatría" Value="3" />
                            <asp:ListItem Text="Dermatología" Value="4" />
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvEspecialidad" runat="server" ControlToValidate="ddlEspecialidad" ErrorMessage="Seleccione una especialidad." ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                    </td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Correo electronico</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Ingrese un correo electrónico" ForeColor="Red" />
                    <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Ingrese un correo electronico valido" ForeColor="Red" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Usuario:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Ingrese el usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style3">Contraseña:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtContrasenia" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Ingrese una contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Confirmar contraseña:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtConfirmarContrasenia" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp; </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvConfirmarContrasenia" runat="server" ControlToValidate="txtConfirmarContrasenia" ErrorMessage="Confirme la contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;
                    <asp:CompareValidator ID="cvContrasenia" runat="server" ControlToCompare="txtContrasenia" ControlToValidate="txtConfirmarContrasenia" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Dias de atención:</td>
                <td class="auto-style2">
                    <asp:CheckBoxList ID="cblDias" runat="server">
                        <asp:ListItem Text="Lunes" Value="1" />
                        <asp:ListItem Text="Martes" Value="2" />
                        <asp:ListItem Text="Miércoles" Value="3" />
                        <asp:ListItem Text="Jueves" Value="4" />
                        <asp:ListItem Text="Viernes" Value="5" />
                        <asp:ListItem Text="Sábado" Value="6" />
                    </asp:CheckBoxList>
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Horario desde:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtHoraDesde" runat="server" TextMode="Time"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvHorarioDesde" runat="server" ControlToValidate="txtHoraDesde" ErrorMessage="Ingrese una hora inicial" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Horario hasta:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtHoraHasta"
                        runat="server" TextMode="Time" />
                </td>
                <td>
                    <asp:RequiredFieldValidator
                        ID="rfvHorarioHasta" runat="server" ControlToValidate="txtHoraHasta" ErrorMessage="Ingrese una hora final" ForeColor="Red" />
                </td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar médico" OnClick="btnGuardar_Click" />
                </td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>

        </table>
 
    <br />
    <asp:Label ID="lblMensaje" runat="server" />
        </div>
    </form>
</body>
</html>
