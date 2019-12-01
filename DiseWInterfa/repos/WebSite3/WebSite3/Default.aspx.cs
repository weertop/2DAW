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

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedValue == "cl")
        {
            MultiView1.ActiveViewIndex = 0; 
        }
        if (Menu1.SelectedValue == "b")
        {
            MultiView1.ActiveViewIndex = 1;
        }
        if (Menu1.SelectedValue == "que")
        {
            MultiView1.ActiveViewIndex = 2;
        }
    }
}