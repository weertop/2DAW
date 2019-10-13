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

    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;

        if (ListBox1.SelectedIndex != -1) { 
        Label1.Text = ListBox1.SelectedItem.Text;

        Label2.Text = ListBox1.SelectedValue;

        Label3.Text = ListBox1.SelectedIndex.ToString(); }
        else
        {
            Label1.Text = "no ha seleccionado ninguna ciudad";
            Label2.Text = "";
            Label3.Text = "";
        }
        Label4.Text = DropDownList1.SelectedItem.Text;
        Label5.Text = RadioButtonList1.SelectedItem.Text;

        if (CheckBox1.Checked)
        {
            Label6.Text = "SI";
        }
        else
        {
            Label6.Text = "NO";
        }

        for(var i=0; i<CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                Label7.Text = Label7.Text + " " + CheckBoxList1.Items[i].Text;
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       
    }
}