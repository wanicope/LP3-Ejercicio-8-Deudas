using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LP3_Ejercicio_8_Deudas
{
    public partial class GestionDeudas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menu.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["fecha"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["monto"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["idCliente"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource2.Insert();
            GridView1.DataBind();
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

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = "idCliente = " + DropDownList1.SelectedValue;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = String.Empty;
            SqlDataSource1.FilterParameters.Clear();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[3].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;
        }
    }
}