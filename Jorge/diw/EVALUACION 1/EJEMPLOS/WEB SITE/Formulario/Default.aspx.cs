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
        Label1.Text = Session["nombre"].ToString();
        Label2.Text = Session["edad"].ToString();
        Label3.Text = Session["ec"].ToString();
    }
}