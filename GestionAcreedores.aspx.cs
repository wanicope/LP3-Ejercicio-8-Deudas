using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Ejercicio_8_Deudas
{
    public partial class GestionAcreedores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            
            SqlDataSource2.InsertParameters["apellido"].DefaultValue=TextBox1.Text;
            SqlDataSource2.InsertParameters["nombre"].DefaultValue = TextBox2.Text;
            SqlDataSource2.Insert();
            GridView1.DataBind();
            
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[3].Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Update();
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlDataSource2.Delete();
            GridView1.DataBind();
        }
    }
}