<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vistas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio de sesión - Clínica</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 289px;
        }
        .auto-style3 {
            width: 289px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 143px;
        }
        .auto-style6 {
            height: 26px;
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>&nbsp;Clínica - Inicio de sesión</h2>

            <table class="auto-style1">
                <tr>
                    <td</td>
                    <td>Usuario:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Ingrese su usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Contraseña:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtContrasenia" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="Ingrese su contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
