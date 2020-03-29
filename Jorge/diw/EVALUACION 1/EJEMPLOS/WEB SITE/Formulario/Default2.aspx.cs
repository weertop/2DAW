using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["nombre"].ToString();
        TextBox2.Text = Session["edad"].ToString();
        TextBox3.Text = Session["ec"].ToString();
    }
}