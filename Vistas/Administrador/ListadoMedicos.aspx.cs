using System;
using System.Data;
using System.Web.UI;

namespace Vistas.Administrador
{
    public partial class ListadoMedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["Usuario"] != null)
            {
                lblUsuario.Text = "Usuario: " + Session["Usuario"].ToString();
            }

            if (!IsPostBack)
            {
                DataTable dt = new DataTable();

                dt.Columns.Add("Legajo");
                dt.Columns.Add("DNI");
                dt.Columns.Add("Nombre");
                dt.Columns.Add("Apellido");
                dt.Columns.Add("Fecha de Nacimiento");
                dt.Columns.Add("Especialidad");
                dt.Columns.Add("Telefono");
                dt.Columns.Add("Email");
                dt.Columns.Add("Horario");

                dt.Rows.Add(
                    "ME001",
                    "55555555",
                    "Carlos",
                    "Fernandez",
                    "12/04/1978",
                    "Cardiología",
                    "1133332222",
                    "carlosfernandez@gmail.com",
                    "Lun a Vie 08:00 - 12:00");

                dt.Rows.Add(
                    "ME002",
                    "66666666",
                    "Laura",
                    "Martinez",
                    "25/09/1983",
                    "Pediatría",
                    "1155554444",
                    "lauramartinez@gmail.com",
                    "Lun a Vie 13:00 - 18:00");

                dt.Rows.Add(
                    "ME003",
                    "77777777",
                    "Diego",
                    "Gomez",
                    "18/01/1975",
                    "Clínica Médica",
                    "1177776666",
                    "diegogomez@gmail.com",
                    "Mar y Jue 09:00 - 15:00");

                dt.Rows.Add(
                    "ME004",
                    "88888888",
                    "Mariana",
                    "Lopez",
                    "07/06/1988",
                    "Dermatología",
                    "1199998888",
                    "marianalopez@gmail.com",
                    "Lun a Vie 10:00 - 16:00");

                gvMedicos.DataSource = dt;
                gvMedicos.DataBind();
            }
        }
    }
}