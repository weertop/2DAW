using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class concesionario : System.Web.UI.Page
{

    public static int precio = 0;
    public static bool control = false;
    public static string color = "";

    String[] arrayFord = new string[] { "Ka", "Fiesta", "B-Max", "Tourneo", "Ecosport", "Focus", "C-Max", "Kuga", "mondeo" };
    int[] preciosFord = new int[] { 7000, 9000, 10000, 11000, 10500, 12000, 12500, 13000, 13500 };
    String[] arrayPeugeot = new string[] { "108", "208", "308", "508", "2008", "3008", "5008", "partner", "traveller" };
    int[] preciosPeugeot = new int[] { 6000, 8000, 9500, 10000, 11500, 12000, 12500, 13000, 13500 };
    String[] arrayRenault = new string[] { "Twizy", "Clio", "Twingo", "Kangoo", "Captur", "Mégane", "Trafic", "Scénic", "Kadjar" };
    int[] preciosRenault = new int[] { 6500, 9500, 10000, 11500, 10500, 12800, 12500, 13000, 13500 };

    protected void Page_Load(object sender, EventArgs e)
    {
        mostrar_hora();
        
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        mostrar_hora();
    }

    void mostrar_hora()
    {
        DateTime hora = DateTime.Now;
        Label1.Text = hora.ToLongTimeString();
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        precio = 0;
        ListBox2.Items.Clear();
        if (ListBox1.SelectedValue == "Ford")
        {
            
            Image1.ImageUrl = "imagenes/ford.jpg";
            
            ListBox2.DataSource = arrayFord;
            ListBox2.DataBind();

        }
        else if (ListBox1.SelectedValue == "Peugeot")
        {
            Image1.ImageUrl = "imagenes/peugeot.jpg";
            
            ListBox2.DataSource = arrayPeugeot;
            ListBox2.DataBind();


        }
        else if (ListBox1.SelectedValue == "Renault")
        {
            
            Image1.ImageUrl = "imagenes/renault.jpg";
                        
            ListBox2.DataSource = arrayRenault;
            ListBox2.DataBind();

        }
        if (RadioButtonList1.SelectedValue == "Si")
        {
            RadioButtonList1.SelectedValue = "No";
        }

        RadioButtonList2.ClearSelection();
        color = "";
        Label2.Text = precio.ToString();
    }

    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        int indice = ListBox2.SelectedIndex;
        if (ListBox1.SelectedValue== "Peugeot")
        {
            precio = preciosPeugeot[indice];
        }
        if (ListBox1.SelectedValue == "Renault")
        {
            precio = preciosRenault[indice];
        }
        if (ListBox1.SelectedValue == "Ford")
        {
            precio = preciosFord[indice];
        }
        Label2.Text = precio.ToString();
        control = false;

        if (RadioButtonList1.SelectedValue == "Si")
        {
            RadioButtonList1.SelectedValue = "No";
        }

        RadioButtonList2.ClearSelection();
        color = "";
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        if (RadioButtonList1.SelectedValue== "Si")
        {
            control = true;
            precio += 1500;
            
        }
        else if(control && RadioButtonList1.SelectedValue == "No")
        {
            control = false;
            precio -= 1500;
           
        }
        Label2.Text = precio.ToString();
    }

    protected void RadioButtonList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (RadioButtonList2.SelectedValue)
        {
            case "Blanco":
                if (color== "Rojo")
                {
                    precio -= 600;
                }else if (color== "Negro")
                {
                    precio -= 700;
                }
                precio += 400;
                color = "Blanco";
                Label2.Text = precio.ToString();
                break;
            case "Rojo":
                if (color == "Blanco")
                {
                    precio -= 400;
                }
                else if (color == "Negro")
                {
                    precio -= 700;
                }
                color = "Rojo";
                precio += 600;
                Label2.Text = precio.ToString();
                break;
            case "Negro":
                if (color == "Blanco")
                {
                    precio -= 400;
                }
                else if (color == "Rojo")
                {
                    precio -= 600;
                }
                color = "Negro";
                precio += 700;
                Label2.Text = precio.ToString();
                break;

        }
    }
}