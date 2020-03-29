using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Collections;



public partial class _Default : System.Web.UI.Page
{    static string[] nombres = new string[6];
     static Int16 i=0;
     static ArrayList listnombres = new ArrayList();
     static List<string> nombresl = new List<string>();
     //La diferencia principal entre un ArrayList y una List, es que el ArrayList permite que se agreguen diversos tipos a la colección

    protected void Page_Load(object sender, EventArgs e)
    {
        
        //MessageBox.Show("entra siempre");
        if (!IsPostBack)//solo se ejecuta cuando se carga la página en memoria, no se ejecuta cuando se hace postback 
        {
            MessageBox.Show("entra una vez");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nombres[i] = TextBox1.Text;
        i++;
        listnombres.Add(TextBox1.Text);
        nombresl.Add(TextBox1.Text);
        
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    { for (Int16 nume = 0; nume < nombres.Length; nume++) { 
        MessageBox.Show(nombres[nume]);
            // para que funcione messagebox hay que poner el 'using System.Windows.Forms;
            ListBox1.Items.Add(nombres[nume]);//añade cada elemento del array de uno en uno a la listbox
    }
    
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        for (Int16 nume = 0; nume < listnombres.Count; nume++)
        {
            MessageBox.Show(listnombres[nume].ToString());
        }

        ListBox1.DataSource = listnombres;//vuelca el arraylist directamente a la listbox
        ListBox1.DataBind();//necesario para que haga efectiva la operación de volcado
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        for (Int16 nume = 0; nume < nombresl.Count; nume++)
        {
            MessageBox.Show(nombresl[nume].ToString());
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["vari"] = "HOLA";
        Response.Redirect("default2.aspx");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}