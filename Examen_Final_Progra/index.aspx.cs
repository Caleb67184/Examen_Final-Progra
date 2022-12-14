using Examen_Final_Progra.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_Final_Progra
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bingresar_Click(object sender, EventArgs e)
        {
            ClsUsuarios.usuario = username.Text;
            ClsUsuarios.clave = password.Text;


            if (ClsUsuarios.ValidarLogin(ClsUsuarios.usuario, ClsUsuarios.clave) > 0)
            {
                    Response.Redirect("Home.aspx");
            }
            else
            {
                Lmensaje.Text = " Correo o contraseña incorrecto";
            }
        }
    }
}