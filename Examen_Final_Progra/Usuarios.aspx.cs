using Examen_Final_Progra.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_Final_Progra
{
    public partial class Usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            ClsUsuarios.usuario = Tusuario.Text;
            ClsUsuarios.nombre_Usuario = Tnombre.Text;
            ClsUsuarios.clave = Tclave.Text;
            ClsUsuarios.apellido = Tapellido.Text;

            if (ClsUsuarios.AgregarUsuario(ClsUsuarios.usuario, ClsUsuarios.nombre_Usuario, ClsUsuarios.clave, ClsUsuarios.apellido) > 0)
            {
                Lmensaje.Text = "Agregado correctamente";
            }
            else
            {
                Lmensaje.Text = "Ha ocurrido un error";
            }
        }

        protected void Bborrar_Click(object sender, EventArgs e)
        {
            ClsUsuarios.IDUsuario = int.Parse(Tid.Text);

            if (ClsUsuarios.EliminarUsuario(ClsUsuarios.IDUsuario) > 0)
            {
                Lmensaje.Text = "Eliminado correctamente";
            }
            else
            {
                Lmensaje.Text = "Ha ocurrido un error";
            }
        }

        protected void Bmodificar_Click(object sender, EventArgs e)
        {
            ClsUsuarios.nombre_Usuario = Tnombre.Text;
            ClsUsuarios.clave = Tclave.Text;
            ClsUsuarios.apellido = Tapellido.Text;
            ClsUsuarios.IDUsuario = int.Parse(Tid.Text);

            if (ClsUsuarios.ModificarUsuario(ClsUsuarios.nombre_Usuario, ClsUsuarios.clave, ClsUsuarios.apellido, ClsUsuarios.IDUsuario) > 0)
            {
                Lmensaje.Text = "Modificado correctamente";
            }
            else
            {
                Lmensaje.Text = "Ha ocurrido un error";
            }
        }
    }
}