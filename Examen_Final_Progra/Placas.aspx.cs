using Examen_Final_Progra.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen_Final_Progra
{
    public partial class Placas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bagregar_Click(object sender, EventArgs e)
        {
            ClsPlacas.NumPlaca = TnumPlaca.Text;
            ClsPlacas.monto = int.Parse(Tmonto.Text);

            if (ClsPlacas.AgregarPlaca(ClsPlacas.NumPlaca, ClsPlacas.monto) > 0)
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
            ClsPlacas.IdPlaca = int.Parse(Tid.Text);

            if (ClsPlacas.EliminarPlaca(ClsPlacas.IdPlaca) > 0)
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
            ClsPlacas.NumPlaca = TnumPlaca.Text;
            ClsPlacas.IdPlaca = int.Parse(Tid.Text);
            ClsPlacas.monto = int.Parse(Tmonto.Text);

            if (ClsPlacas.ModificarPlaca(ClsPlacas.NumPlaca, ClsPlacas.monto, ClsPlacas.IdPlaca) > 0)
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