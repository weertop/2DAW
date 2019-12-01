using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Collections;
using System.Web.UI.WebControls;

public partial class EjercicioFechaPropuesto : System.Web.UI.Page
{
    static ArrayList fechas = new ArrayList();
    static ArrayList reservaCompleta = new ArrayList();

    static int i=0;

    
    protected void Page_Load(object sender, EventArgs e)
    {
        //if(!IsPostBack){}

        DateTime hoy = DateTime.Today;
        Label4.Text = hoy.ToShortDateString();
        

        mostrar_hora();

        //Calendar1.SelectedDate = Calendar1.TodaysDate;

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        mostrar_hora();
    }

    void mostrar_hora()
    {
        DateTime hora = DateTime.Now;

        Label3.Text = hora.Hour.ToString() + ":" + hora.Minute.ToString() + ":" + hora.Second.ToString();
 
    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.Items[0].Selected) { MultiView1.ActiveViewIndex = 0; }
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
        fechas.Add(Label12.Text);
        reservaCompleta.Add(TextBox2.Text + ':' + TextBox1.Text + ':' + TextBox3.Text + ':' + Label12.Text);
        i++;

        limpiar();
     
    }

    void limpiar()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        Label12.Text = "";
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
        ListBox2.Items.Clear();


        string busqueda = TextBox5.Text;
        string[] piso = new string[4];
        //Label11.Text = reservaCompleta[1];

        for (int i = 0; i < reservaCompleta.Count; i++)
        {
             piso = reservaCompleta[i].ToString().Split(':');

            if (piso[0] == busqueda)
            {
                ListBox2.Items.Add(reservaCompleta[i].ToString());
            }
        }

        TextBox5.Text = "";
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        reservaCompleta.RemoveAt(ListBox1.SelectedIndex);

        ListBox1.Items.Clear();

        string busqueda = TextBox4.Text;
        string[] piso = new string[4];

        for (int i = 0; i < reservaCompleta.Count; i++)
        {
            piso = reservaCompleta[i].ToString().Split(':');

            if (piso[0] == busqueda)
            {
                ListBox1.Items.Add(reservaCompleta[i].ToString());
            }
        }

        TextBox4.Text = "";

       
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Label14.Text = ListBox1.SelectedItem.ToString();
    }


    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();


        string busqueda = TextBox4.Text;
        string[] piso = new string[4];


        for (int i = 0; i < reservaCompleta.Count; i++)
        {
            piso = reservaCompleta[i].ToString().Split(':');

            if (piso[0] == busqueda)
            {
                ListBox1.Items.Add(reservaCompleta[i].ToString());
            }
        }

        TextBox4.Text = "";
    }
}