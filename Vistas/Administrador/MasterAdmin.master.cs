using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.Administrador
{
    public partial class MasterAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Más adelante, el Login guardará el nombre en Session["Usuario"]
            if (Session["Usuario"] != null)
            {
                lblUsuario.Text = Session["Usuario"].ToString();
            }
        }
    }
}
