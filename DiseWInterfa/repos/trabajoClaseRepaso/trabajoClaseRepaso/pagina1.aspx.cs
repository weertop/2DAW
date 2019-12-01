using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pagina1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        Label5.Text = TextBox1.Text + " \n " + TextBox2.Text + " \n "+ TextBox3.Text;

        if(ListBox1.SelectedIndex != -1)
        {
            Label6.Text = ListBox1.SelectedItem.Text + " Value: " + ListBox1.SelectedValue + " Indice: " + ListBox1.SelectedIndex.ToString();
        }
        else
        {
            Label6.Text = "No hay seleccion de ninguna capital";
        }

        if (DropDownList1.SelectedIndex != -1)
        {
            Label7.Text = DropDownList1.SelectedItem.Text + " Value: " + DropDownList1.SelectedValue + " Indice: " + DropDownList1.SelectedIndex.ToString();
        }
        else
        {
            Label7.Text = "No hay seleccion de ningun numero";
        }

        if (RadioButtonList2.SelectedIndex != -1)
        {
            Label8.Text = RadioButtonList2.Text;
        }
        else
        {
            Label8.Text = "No hay seleccion de ningun numero";
        }

        if (CheckBox1.Checked)
        {
            Label9.Text = "SI";
        }
        else
        {
            Label9.Text = "NO";

        }

        for (var i=0; i<CheckBoxList1.Items.Count;i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                Label11.Text += " " + CheckBoxList1.Items[i].Text;
            }
        }

        //ListBox1.SelectedItem; ListBox1.SelectedItem.Text;
        MultiView1.ActiveViewIndex = 1;
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label10.Text = ListBox1.SelectedItem.Text;
        //ListBox1.AutoPostBack = true;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}