using System;
using System.Web.UI;

namespace Vistas.Administrador
{
    public partial class InicioAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Session["Usuario"] != null)
            {
                lblUsuario.Text = "Usuario: " + Session["Usuario"].ToString();
            }
        }
    }
}
