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
        Label1.Text = Convert.ToString(Request.QueryString["Nombre"]);
        Label2.Text = Convert.ToString(Request.QueryString["apellido1"]);
        Label3.Text = Convert.ToString(Request.QueryString["apellido2"]);
    }
}