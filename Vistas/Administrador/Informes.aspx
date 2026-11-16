<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Informes.aspx.cs" Inherits="Vistas.Administrador.Informes" %>

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
            <h2>Informes estadisticos</h2>

            <h3>Informe 1: Cantidad de turnos por especialidad</h3>

            <p>Seleccione un periodo para consultar la cantidad de turnos correspondientes a cada especialidad</p>

            <table>
                <tr>
                    <td>Fecha desde:</td>
                    <td>
                        <asp:TextBox ID="txtFechaDesde" runat="server" TextMode="Date"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvFechaDesde" runat="server" ControlToValidate="txtFechaDesde" ValidationGroup="Turnos" ErrorMessage="Selecione una fecha desde" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>Fecha hasta:</td>
                    <td>
                        <asp:TextBox ID="txtFechaHasta" runat="server" TextMode="Date"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvFechaHasta" runat="server" ControlToValidate="txtFechaHasta" ValidationGroup="Turnos" ErrorMessage="Seleccione una fecha hasta" ForeColor="Red" />
                    </td>
                </tr>
            </table>

            <br />

                <asp:Button ID="btnConsultarTurnos" runat="server" Text="Consultar turnos" ValidationGroup="Turnos" OnClick="btnConsultarTurnos_Click" />
    
            <br /><br />
    
            <asp:GridView ID="gvTurnosEspecialidad" runat="server" AutoGenerateColumns="False" CellPadding="10"> <Columns>
                    <asp:BoundField DataField="Especialidad" HeaderText="ESPECIALIDAD" />
    
                    <asp:BoundField DataField="Cantidad" HeaderText="CANTIDAD DE TURNOS" />
                </Columns>
            </asp:GridView>
    
            <br />
    
            <asp:Label ID="lblMensajeTurnos" runat="server" ForeColor="Red"></asp:Label>
    
            <hr />
    
            <h3>Informe 2: Asistencia de pacientes</h3>
    
            <p>Seleccione un período para consultar la cantidad de pacientes presentes y ausentes en los turnos asignados.</p>
    
            <table>
                <tr>
                    <td>Fecha desde:</td>
                    <td>
                        <asp:TextBox ID="txtDesdeAsistencia" runat="server" TextMode="Date"></asp:TextBox>
    
                        <asp:RequiredFieldValidator ID="rfvDesdeAsistencia" runat="server" ControlToValidate="txtDesdeAsistencia" ValidationGroup="Asistencia" ErrorMessage="Seleccione una fecha desde" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td>Fecha hasta:</td>
                    <td>
                        <asp:TextBox ID="txtHastaAsistencia" runat="server" TextMode="Date"></asp:TextBox>
    
                        <asp:RequiredFieldValidator ID="rfvHastaAsistencia" runat="server" ControlToValidate="txtHastaAsistencia" ValidationGroup="Asistencia" ErrorMessage="Seleccione una fecha hasta" ForeColor="Red" />
                    </td>
                </tr>
            </table>
    
            <br />
     
            <asp:Button ID="btnConsultarAsistencia" runat="server" Text="Consultar asistencia" ValidationGroup="Asistencia" OnClick="btnConsultarAsistencia_Click" /> 
            
            <br /><br />
    
            <asp:GridView ID="gvAsistencia" runat="server" AutoGenerateColumns="False" CellPadding="10"> <Columns>
                    <asp:BoundField DataField="Estado" HeaderText="ESTADO DE ASISTENCIA" />
    
                    <asp:BoundField DataField="Cantidad" HeaderText="CANTIDAD DE TURNOS" />
                </Columns>
            </asp:GridView>
    
            <br />
    
            <asp:Label ID="lblMensajeAsistencia" runat="server" ForeColor="Red"></asp:Label>
    
            <br /><br />
    
            <asp:Label ID="lblDemostracion" runat="server" Text="Los resultados mostrados son datos ficticios utilizados para demostrar la interfaz." Font-Italic="True" />
        </div>
    </form>
</body>
</html>
