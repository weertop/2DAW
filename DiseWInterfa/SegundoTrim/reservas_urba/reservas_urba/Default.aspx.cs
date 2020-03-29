using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    
    static string[] dias = new string[32];
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            Calendar1.SelectedDate = Calendar1.TodaysDate;
            for (var i = 0; i < 32; i++)
            {
                dias[i] = "";
            }
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        DateTime hora = DateTime.Now;
        Label1.Text = hora.ToShortDateString();
        Label2.Text = hora.Hour.ToString() + ":" + hora.Minute.ToString() + ":" + hora.Second.ToString();
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.SelectedValue == "RESERVAR") { MultiView1.ActiveViewIndex = 0; }
        if (Menu1.Items[1].Selected) { MultiView1.ActiveViewIndex = 1; }
        if (Menu1.Items[2].Selected) { MultiView1.ActiveViewIndex = 2; }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime fecha = Calendar1.SelectedDate;
        Int16 dia = Convert.ToInt16(fecha.Day);
        if (dias[dia] == "")
        {
            dias[dia] = TextBox2.Text;
        }
        else
        { MessageBox.Show("ese día ya está reservado"); }

     }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
        

        for (var i = 0; i < 32; i++)
        {
            if (dias[i] == TextBox4.Text)
            {
                ListBox1.Items.Add(i.ToString());
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ListBox1.SelectedIndex != -1) { 
        Int16 posicion = Convert.ToInt16(ListBox1.Text);
        dias[posicion] = "";
          ListBox1.Items.RemoveAt(ListBox1.SelectedIndex);
             }
    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        Boolean una = true;
        for (var i = 0; i < 32; i++)
        {
            if (dias[i] == TextBox5.Text)
            {if (una)
                {
                    Label3.Text = "El piso " + TextBox5.Text + " " + "Tiene reservado los días ";
                    una = false;
                }
                Label3.Text +=i.ToString()+"  ";
            }
        }
    }
}