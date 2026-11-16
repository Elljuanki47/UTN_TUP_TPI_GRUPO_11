using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Vistas.Administrador
{
    public partial class Informes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["Usuario"] != null)
            {
                lblUsuario.Text = "Usuario: " + Session["Usuario"].ToString();
            }
        }

        protected void btnConsultarTurnos_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            DateTime fechaDesde;
            DateTime fechaHasta;

            if (!DateTime.TryParse(txtFechaDesde.Text, out fechaDesde) || !DateTime.TryParse(txtFechaHasta.Text, out fechaHasta))
            {
                lblMensajeTurnos.Text = "Las fechas ingresadas no son validas.";
                return;
            }

            if (fechaDesde > fechaHasta)
            {
                lblMensajeTurnos.Text = "La fecha desde no puede ser posterior a la fecha hasta.";
                return;
            }

            lblMensajeTurnos.Text = "";

            DataTable dt = new DataTable();

            dt.Columns.Add("Especialidad");
            dt.Columns.Add("Cantidad", typeof(int));

            dt.Rows.Add("Cardiología", 24);
            dt.Rows.Add("Pediatría", 18);
            dt.Rows.Add("Clínica Médica", 32);
            dt.Rows.Add("Dermatología", 12);

            gvTurnosEspecialidad.DataSource = dt;
            gvTurnosEspecialidad.DataBind();
        }
        protected void btnConsultarAsistencia_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                return;
            }

            DateTime fechaDesde;
            DateTime fechaHasta;

            if (!DateTime.TryParse(txtDesdeAsistencia.Text, out fechaDesde) ||
                !DateTime.TryParse(txtHastaAsistencia.Text, out fechaHasta))
            {
                lblMensajeAsistencia.Text = "Las fechas ingresadas no son válidas.";
                return;
            }

            if (fechaDesde > fechaHasta)
            {
                lblMensajeAsistencia.Text =
                    "La fecha desde no puede ser posterior a la fecha hasta.";
                return;
            }

            lblMensajeAsistencia.Text = "";

            DataTable dt = new DataTable();

            dt.Columns.Add("Estado");
            dt.Columns.Add("Cantidad", typeof(int));

            dt.Rows.Add("Presentes", 48);
            dt.Rows.Add("Ausentes", 12);

            gvAsistencia.DataSource = dt;
            gvAsistencia.DataBind();
        }
    }
}