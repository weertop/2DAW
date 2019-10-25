using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EjercicioFechaPropuesto : System.Web.UI.Page
{
    String[] fechas = new String[10];
    String[] reservaCompleta = new string[10];
    //public static int i = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime hoy = DateTime.Today;
        Label4.Text = hoy.ToShortDateString();

        mostrar_hora();

        Calendar1.SelectedDate = Calendar1.TodaysDate;

        foreach (string word in reservaCompleta)
        {
            Label12.Text = "WORD: " + word;
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        mostrar_hora();
    }

    void mostrar_hora()
    {
        DateTime hora = DateTime.Now;

        Label3.Text = hora.Hour.ToString() + ":" + hora.Minute.ToString() + ":" + hora.Second.ToString();
        //DateTime fechaact = Convert.ToDateTime(Label1.Text);

        //DateTime fechalarm = Convert.ToDateTime(TextBox1.Text);
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.Items[0].Selected) { MultiView1.ActiveViewIndex = 0; }
        //if (Menu1.SelectedValue == "INTRODUCIR_ DATOS") { MultiView1.ActiveViewIndex = 0; }
        if (Menu1.Items[1].Selected) { MultiView1.ActiveViewIndex = 1; }
        if (Menu1.Items[2].Selected) { MultiView1.ActiveViewIndex = 2; }
    }



    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Calendar1.SelectionMode = CalendarSelectionMode.Day;
        Label12.Text = Calendar1.SelectedDate.ToLongDateString();

        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int cont = 0;
        fechas[cont] = Label12.Text;
        reservaCompleta[cont] = TextBox2.Text + ':' +  TextBox1.Text +  TextBox3.Text + Label12.Text;
        cont++;
    }

    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        /*String busqueda = TextBox5.Text;

        if (ListBox1.SelectedValue == "Ford")
        {

            Image1.ImageUrl = "imagenes/ford.jpg";

            ListBox2.DataSource = arrayFord;
            ListBox2.DataBind();

        }*/

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        String busqueda = TextBox5.Text;

        for (int i = 0; i < fechas.Length; i++)
        {
            String[] piso = fechas[i].Split(':');
            if (piso[0].Equals(busqueda))
            {
                ListBox2.DataSource = fechas[i];
            }
        }

        ListBox2.DataBind();
    }
}