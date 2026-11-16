using System;
using System.Web.UI;

namespace Vistas.Administrador
{
    public partial class ModificarPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["Usuario"] != null)
            {
                lblUsuario.Text = "Usuario: " + Session["Usuario"].ToString();
            }

            if (!IsPostBack)
            {
                ddlPacientes.Items.Add("11111111");

                txtDni.Text = "11111111";
                txtNombre.Text = "Juan";
                txtApellido.Text = "Perez";
                ddlSexo.SelectedIndex = 0;
                txtNacionalidad.Text = "Argentina";
                txtFechaNacimiento.Text = "1995-03-15";
                txtDireccion.Text = "Av. Presidente Perón 1540";
                txtLocalidad.Text = "Los Polvorines";
                txtProvincia.Text = "Buenos Aires";
                txtEmail.Text = "juanperez@gmail.com";
                txtTelefono.Text = "1122223333";
            }
        }
    }
}