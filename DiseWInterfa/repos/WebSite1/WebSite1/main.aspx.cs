using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label2.Text = TextBox1.Text;
        Label2.BackColor = System.Drawing.Color.Red;
        Label2.BorderColor = Color.Black;
        Label2.BorderStyle = BorderStyle.Solid;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}