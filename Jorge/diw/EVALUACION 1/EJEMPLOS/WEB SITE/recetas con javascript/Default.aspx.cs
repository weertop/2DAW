using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    static string[] reces;
    static string[] recetas= { };
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if ((Menu1.Items[0].Selected)) { MultiView1.ActiveViewIndex = 0; }
        if ((Menu1.Items[1].Selected)) { MultiView1.ActiveViewIndex = 1; }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void HiddenField1_ValueChanged(object sender, EventArgs e)
    {
        var cadena = HiddenField1.Value;
        reces = cadena.Split('*');
        recetas = recetas.Concat(reces).ToArray();


        
        limpiar();
    }
    void limpiar()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

    }

    protected void HiddenField2_ValueChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Add(HiddenField2.Value);
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        for (var i=0; i<recetas.Length; i++)
        { 
            if (recetas[i] == ListBox1.Text)
            {
               
                TextBox5.Text = recetas[i + 1];
                
                TextBox6.Text = recetas[i + 2];
                TextBox8.Text = recetas[i + 3];
                int num = Convert.ToInt16(recetas[i + 4]);
               
                int inicio = i + 4;
                TextBox7.Text = "";
                for (var j = 0; j < num; j++)
                {
                   
                    inicio++;
                    
                    TextBox7.Text +=recetas[inicio];
                    TextBox7.Text += " ";
                }
                break;
            }
            
        }
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}