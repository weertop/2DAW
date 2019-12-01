using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaginaIni : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox6.Text = TextBox1.Text;
        TextBox7.Text = TextBox2.Text;
        TextBox8.Text = TextBox3.Text;
        TextBox9.Text = TextBox4.Text;
        TextBox10.Text = TextBox5.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //Response.Redirect("SegundaPag.aspx");
        Button2.PostBackUrl = "SegundaPag.aspx";
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}