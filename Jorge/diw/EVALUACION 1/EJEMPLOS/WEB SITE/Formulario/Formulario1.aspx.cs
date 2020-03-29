using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Formulario1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Este código se ejecutaría si no hubiéramos puesto código en los procedimientos de cada control y no estuvieran activado los autopostback de los controles
        lblnombre.Text = TextBox1.Text;
        
        //lbledad.Text = ListBox1.SelectedItem.Value;
        lbledad.Text = ListBox1.Text;
        
        // lbledad.Text = ListBox1.SelectedValue;

        // lblec.Text = rbec.SelectedItem.Value;
        // lblec.Text = rbec.SelectedValue;
        lblec.Text = rbec.Text;
        
        lblprovincia.Text = lbprovincia.SelectedValue;

        
       if (ckbacepto.Checked)
        {
            lblacepta.Text = "si acepta";
        }
       else
        {
            lblacepta.Text = "no acepta";
        }
        

    }

    protected void lbprovincia_SelectedIndexChanged(object sender, EventArgs e)
    {
        //para que se ejecute este código tenemos que poner la propiedad autopostback = true
        lblprovincia.Text = lbprovincia.SelectedValue;
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //para que se ejecute este código tenemos que poner la propiedad autopostback = true
        lbledad.Text = ListBox1.SelectedValue;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        //para que se ejecute este código tenemos que poner la propiedad autopostback = true
        lblnombre.Text = TextBox1.Text;
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void rbec_SelectedIndexChanged(object sender, EventArgs e)
    {
        //para que se ejecute este código tenemos que poner la propiedad autopostback = true
        lblec.Text = rbec.SelectedValue;
    }

    protected void ckbacepto_CheckedChanged(object sender, EventArgs e)
    {
        //para que se ejecute este código tenemos que poner la propiedad autopostback = true
        if (ckbacepto.Checked)
        {
            lblacepta.Text = "si acepta";
        }
        else
        {
            lblacepta.Text = "no acepta";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["nombre"] = TextBox1.Text;
        Session["edad"] = ListBox1.Text;
        Session["ec"] = rbec.Text;
        Response.Redirect("~/Default2.aspx");

    }
}