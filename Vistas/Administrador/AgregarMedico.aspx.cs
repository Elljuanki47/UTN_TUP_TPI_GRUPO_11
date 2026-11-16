using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administrador
{
    public partial class AgregarMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["Usuario"] != null)
            {
                lblUsuario.Text = "Usuario: " + Session["Usuario"].ToString();
            }

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            lblMensaje.Text = "";

            if (!Page.IsValid)
            {
                return;
            }

            bool seleccionoDia = false;

            foreach (ListItem dia in cblDias.Items)
            {
                if (dia.Selected)
                {
                    seleccionoDia = true;
                }
            }

            if (!seleccionoDia)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Seleccione al menos un dia de atencion.";
                return;
            }

            TimeSpan horaDesde;
            TimeSpan horaHasta;

            if (!TimeSpan.TryParse(txtHoraDesde.Text, out horaDesde) || !TimeSpan.TryParse(txtHoraHasta.Text, out horaHasta))
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "Ingrese ambos horarios de antencion.";
                return;
            }

            if (horaDesde >= horaHasta)
            {
                lblMensaje.ForeColor = System.Drawing.Color.Red;
                lblMensaje.Text = "El horario de inicio debe ser anterior al de finalizacion";
                return;
            }

            lblMensaje.ForeColor = System.Drawing.Color.Blue;
            lblMensaje.Text = "Formulario validado. El registro del medico se implementara en la proxima entrega.";
            LimpiarCampos();
        }

        protected void LimpiarCampos()
        {
            txtLegajo.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtDni.Text = "";

            ddlSexo.SelectedIndex = 0;
            txtNacionalidad.Text = "";
            txtFechaNacimiento.Text = "";

            txtDireccion.Text = "";
            txtProvincia.Text = "";
            txtLocalidad.Text = "";
            txtTelefono.Text = "";

            txtCorreo.Text = "";
            txtUsuario.Text = "";
            txtContrasenia.Text = "";
            txtConfirmarContrasenia.Text = "";

            ddlEspecialidad.SelectedIndex = 0;

            foreach (ListItem dia in cblDias.Items)
            {
                dia.Selected = false;
            }

            txtHoraDesde.Text = "";
            txtHoraHasta.Text = "";
        }
    }
}