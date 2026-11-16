using System;
using System.Data;
using System.Web.UI;

namespace Vistas.Administrador
{
    public partial class ListadoPacientes : System.Web.UI.Page
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

                dt.Columns.Add("ID Paciente");
                dt.Columns.Add("DNI");
                dt.Columns.Add("Nombre");
                dt.Columns.Add("Apellido");
                dt.Columns.Add("Fecha de Nacimiento");
                dt.Columns.Add("Telefono");
                dt.Columns.Add("Email");

                dt.Rows.Add(
                    "PA001",
                    "11111111",
                    "Juan",
                    "Perez",
                    "15/03/1995",
                    "1122223333",
                    "juanperez@gmail.com");

                dt.Rows.Add(
                    "PA002",
                    "22222222",
                    "Ana",
                    "Lopez",
                    "22/08/1988",
                    "1144445555",
                    "analopez@gmail.com");

                dt.Rows.Add(
                    "PA003",
                    "33333333",
                    "Martin",
                    "Garcia",
                    "10/11/2000",
                    "1166667777",
                    "martingarcia@gmail.com");

                dt.Rows.Add(
                    "PA004",
                    "44444444",
                    "Sofia",
                    "Gomez",
                    "08/05/2005",
                    "1188889999",
                    "sofiagomez@gmail.com");

                gvPacientes.DataSource = dt;
                gvPacientes.DataBind();
            }
        }
    }
}