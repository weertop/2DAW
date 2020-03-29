using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.Items[0].Selected) { MultiView1.ActiveViewIndex = 0; }
        //if (Menu1.Items[1].Selected) { MultiView1.ActiveViewIndex = 2; }
        if (Menu1.Items[2].Selected) { MultiView1.ActiveViewIndex = 1; }
        if (Menu1.SelectedValue=="MOSTRAR") { MultiView1.ActiveViewIndex = 2; }
        if (Menu1.SelectedValue == "MAS") { Response.Redirect("https://www.google.es"); }
        //if (Menu1.Items[0].ChildItems[0].Selected) { Response.Redirect("https://www.google.es"); }
        
    }
}