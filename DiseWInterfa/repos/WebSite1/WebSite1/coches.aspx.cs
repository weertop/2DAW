using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class coches : System.Web.UI.Page
{
    static ArrayList modelosToyota = new ArrayList() { "Aygo", "Rav4", "Hillux" };
    static ArrayList modelosNissan = new ArrayList() { "Versa", "Leaf", "GT-RX" };
    static ArrayList modelosFord = new ArrayList() { "Ranger", "Mustang", "Fiesta" };
    static ArrayList preciosToyota = new ArrayList() {13000,32000,27000 };
    static ArrayList preciosNissan = new ArrayList() { 26000, 20000, 38000 };
    static ArrayList preciosFord = new ArrayList() { 26000, 58000, 18000 };

    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ListBox2.SelectedIndex)
        {
            case 0:
                if(ListBox1.SelectedIndex == 0) { Image1.ImageUrl = "/imagenes/aygo.jpg"; }
                if(ListBox1.SelectedIndex == 1) { Image1.ImageUrl = "/imagenes/versa.jpg"; }
                if(ListBox1.SelectedIndex == 2) { Image1.ImageUrl = "/imagenes/ranger.jpg"; }
                break;
            case 1:
                if(ListBox1.SelectedIndex == 0) { Image1.ImageUrl = "/imagenes/rav4.jpg"; }
                if (ListBox1.SelectedIndex == 1) { Image1.ImageUrl = "/imagenes/leaf.jpg"; }
                if (ListBox1.SelectedIndex == 2) { Image1.ImageUrl = "/imagenes/mustang.jpg"; }
                break;
            case 2:
                if (ListBox1.SelectedIndex == 0) { Image1.ImageUrl = "/imagenes/hillux.jpg"; }
                if (ListBox1.SelectedIndex == 1) { Image1.ImageUrl = "/imagenes/gtrx.jpg"; }
                if (ListBox1.SelectedIndex == 2) { Image1.ImageUrl = "/imagenes/fiesta.jpg"; }
                break;
        }

    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch (ListBox1.SelectedIndex)
        {
            case 0:
                ListBox2.DataSource = modelosToyota;
                ListBox2.DataBind();
                break;
            case 1:
                ListBox2.DataSource = modelosNissan;
                ListBox2.DataBind();
                break;
            case 2:
                ListBox2.DataSource = modelosFord;
                ListBox2.DataBind();
                break;
        }

       
    }

    protected String precioCalculado(string precio)
    {
        //int x = Int32.Parse(TextBoxD1.Text);
        int precioFinal = Int32.Parse(precio);

        if(RadioButtonList1.SelectedValue == "ct"){precioFinal += 500;}
        else if(RadioButtonList1.SelectedValue == "ac") { precioFinal += 800; }
        else if(RadioButtonList1.SelectedValue == "ap") { precioFinal += 2000; }

        if (RadioButtonList2.SelectedValue == "r") { precioFinal += 200; }
        else if (RadioButtonList2.SelectedValue == "n") { precioFinal += 100; }
        else if (RadioButtonList2.SelectedValue == "a") { precioFinal += 300; }

        return precioFinal.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        switch (ListBox2.SelectedIndex)
        {
            case 0:
                if (ListBox1.SelectedIndex == 0) { Label6.Text = precioCalculado(preciosToyota[0].ToString()); }
                if (ListBox1.SelectedIndex == 1) { Label6.Text = precioCalculado(preciosToyota[1].ToString()); }
                if (ListBox1.SelectedIndex == 2) { Label6.Text = precioCalculado(preciosToyota[2].ToString()); }
                break;
            case 1:
                if (ListBox1.SelectedIndex == 0) { Label6.Text = precioCalculado(preciosNissan[0].ToString()); }
                if (ListBox1.SelectedIndex == 1) { Label6.Text = precioCalculado(preciosNissan[1].ToString()); }
                if (ListBox1.SelectedIndex == 2) { Label6.Text = precioCalculado(preciosNissan[2].ToString()); }
                break;
            case 2:
                if (ListBox1.SelectedIndex == 0) { Label6.Text = precioCalculado(preciosFord[0].ToString()); }
                if (ListBox1.SelectedIndex == 1) { Label6.Text = precioCalculado(preciosFord[1].ToString()); }
                if (ListBox1.SelectedIndex == 2) { Label6.Text = precioCalculado(preciosFord[2].ToString()); }
                break;
        }
     
    }
}