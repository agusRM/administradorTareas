using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace AdministradorTareas.app
{
    public partial class frmTareas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            string cadena = this.SqlDSTareas.ConnectionString;
            SqlConnection conexion = new SqlConnection(cadena);
            string consulta = "insert into tbTarea values(@nombreTarea, @fechaInicioTarea, @fechaVencimientoTarea, @fechaTerminacionTarea, @comentarioTarea)";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            conexion.Open();
            comando.CommandType = CommandType.Text;
            comando.Parameters.Add("@nombreTarea", SqlDbType.VarChar, 150).Value = txtNombreTarea.Text;
            comando.CommandType = CommandType.Text;
            comando.Parameters.Add("@fechaInicioTarea", SqlDbType.Date, 3).Value = txtFechaInicio.Text;
            comando.CommandType = CommandType.Text;
            comando.Parameters.Add("@fechaVencimientoTarea", SqlDbType.Date, 3).Value = txtFechaVencimiento.Text;
            comando.CommandType = CommandType.Text;
            comando.Parameters.Add("@fechaTerminacionTarea", SqlDbType.Date, 3).Value = txtFechaTerminacion.Text;
            comando.CommandType = CommandType.Text;
            comando.Parameters.Add("@comentarioTarea", SqlDbType.VarChar, 500).Value = txtComentarioTarea.Text;
            comando.ExecuteNonQuery();
            conexion.Close();
            txtComentarioTarea.Text = "";
            txtFechaInicio.Text = "";
            txtFechaTerminacion.Text = "";
            txtFechaVencimiento.Text = "";
            txtNombreTarea.Text = "";
        }
    }
}