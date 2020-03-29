using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)


    {
        //Creamos una variable de sesión y le asignamos el valor seleccionado de la listbox1
        Session["numero"] = ListBox1.SelectedValue;

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Session["fecha"] = Calendar1.SelectedDate;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["nombre"] = TextBox1.Text;
        Response.Redirect("~/Default2.aspx");
        
    }
}