using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Windows.Forms;

public partial class CestaCompra : System.Web.UI.Page
{
    static ArrayList cesta = new ArrayList();
    static int[] precio = { 10, 21, 13, 19 };
    int total = 0;

    protected void Page_Load(object sender, EventArgs e)
    {

        DateTime hoy = DateTime.Today;
        Label1.Text = hoy.ToShortDateString();


        mostrar_hora();

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        mostrar_hora();
    }

    void mostrar_hora()
    {
        DateTime hora = DateTime.Now;

        Label2.Text = hora.Hour.ToString() + ":" + hora.Minute.ToString() + ":" + hora.Second.ToString();

    }

    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        if (Menu1.Items[0].Selected) { MultiView1.ActiveViewIndex = 0; }
        if (Menu1.Items[1].Selected) { MultiView1.ActiveViewIndex = 1; }
        if (Menu1.Items[2].Selected) { MultiView1.ActiveViewIndex = 2; }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            cesta.Add(Image1.ImageUrl);
        }
        if (CheckBox2.Checked)
        {
            cesta.Add(Image2.ImageUrl);
        }
        if (CheckBox3.Checked)
        {
            cesta.Add(Image3.ImageUrl);
        }
        if (CheckBox4.Checked)
        {
            cesta.Add(Image4.ImageUrl);
        }

        mostrarImgLista();

    }

    public void mostrarImgLista()
    {
        CheckBoxList1.DataSource = cesta;//vuelca el arraylist directamente a la listbox
        CheckBoxList1.DataBind();//necesario para que haga efectiva la operación de volcado
        CheckBoxList2.DataSource = cesta;//vuelca el arraylist directamente a la listbox
        CheckBoxList2.DataBind();//necesario para que haga efectiva la operación de volcado

        if (cesta.Count == 0)
        {
            Image5.ImageUrl = "";
            Image6.ImageUrl = "";
            Image7.ImageUrl = "";
            Image8.ImageUrl = "";
            Image9.ImageUrl = "";
            Image10.ImageUrl = "";
            Image11.ImageUrl = "";
            Image12.ImageUrl = "";
        }

        for (int i = 0; i < cesta.Count; i++)
        {
            if (i == 0) { Image5.ImageUrl = cesta[0].ToString(); Image9.ImageUrl = cesta[0].ToString(); }
            if (i == 1) { Image6.ImageUrl = cesta[1].ToString(); Image10.ImageUrl = cesta[1].ToString(); }
            if (i == 2) { Image7.ImageUrl = cesta[2].ToString(); Image11.ImageUrl = cesta[2].ToString(); }
            if (i == 3) { Image8.ImageUrl = cesta[3].ToString(); Image12.ImageUrl = cesta[3].ToString(); }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        for(int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                cesta.RemoveAt(0);
              
            }
           
        }

        mostrarImgLista();

        total = 0;
        Label3.Text = " ";
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        int resul=0;

        for (int i = 0; i < CheckBoxList2.Items.Count; i++)
        {
            if (CheckBoxList2.Items[i].Selected)
            {
                resul += precio[i];
            }
        }

        /*
        foreach (ListItem lst in CheckBoxList2.Items)
        {
            if (lst.Selected)
                total += precio[0];
        }
        Label3.Text = total.ToString();
        */

        Label3.Text = resul.ToString();
    }

}