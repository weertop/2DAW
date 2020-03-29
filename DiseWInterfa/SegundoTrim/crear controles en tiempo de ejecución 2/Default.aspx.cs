using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            try
            {
                if (Session["pintar"].ToString() == "pinta")
                {
                    creatextos();
                    Session["pintar"] = "";
                }
            }
            catch (Exception ex)
            {
                if (ex.Message == "System.NullReferenceException")
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

     
    }
    protected override void OnInit(EventArgs e) { 
        crearboton("boton1","ver");
        Panel1.Controls.Add(new LiteralControl("&nbsp;&nbsp;&nbsp;"));
        crearboton("boton2","textos");
        Panel1.Controls.Add(new LiteralControl("&nbsp;&nbsp;&nbsp;"));
        crearboton("mostrar","mostrar");
        

    }
    protected void crearboton(string bot,string t)
    {   //se pone la ruta completa de los controles porque hemos incluido el System.Windows.Forms
        System.Web.UI.WebControls.Button btn = new System.Web.UI.WebControls.Button();
        btn.Text = t;
        btn.ID = bot;
       // Asignar las propiedades necesarias: Text, Enabled, etc.
        // Agregarlo al panel
        Panel1.Controls.Add(btn);
            //Page.Controls.Add(btn); si escribimos esta sentencia lo estamos añadiendo directamente a la página
           // Asignarle el evento de "escucha" al click:
           btn.Click += new EventHandler(this.Btn_OnClick);

    }
    protected void Btn_OnClick(object sender, EventArgs e)
    {
          //sender es el objeto donde ocurre el evento      
        System.Web.UI.WebControls.Button b;
        //sender es el objeto donde ocurre el evento
        b = (System.Web.UI.WebControls.Button)sender;
       
        switch (b.ID)
        {
            case "boton1":
                Panel2.Controls.Clear();
                System.Web.UI.WebControls.Label lbl1 = new System.Web.UI.WebControls.Label();
                lbl1.Text = b.ID;
                Panel2.Controls.Add(lbl1);
                // añadimos una línea en blanco
                Panel2.Controls.Add(new LiteralControl("<br />"));


                System.Web.UI.WebControls.Label lbl2 = new System.Web.UI.WebControls.Label();
                lbl2.Text = "Hola";
                Panel2.Controls.Add(lbl2);

                Panel2.Controls.Add(new LiteralControl("<h3> value:PP </h3>"));

                Panel2.Controls.Add(new LiteralControl("<br />"));

                System.Web.UI.WebControls.Label lbl3 = new System.Web.UI.WebControls.Label();
                lbl3.Text = "Adios";
                Panel2.Controls.Add(lbl3);
                //añadimos tres espacios en blanco
                Panel2.Controls.Add(new LiteralControl("&nbsp;&nbsp;&nbsp;"));

                System.Web.UI.WebControls.Label lbl4 = new System.Web.UI.WebControls.Label();
                lbl4.Text = "Ciao";
                Panel2.Controls.Add(lbl4);
                break;
            case "boton2":
                //creamos la variable de sesión pinta, para detectar en el page_load si se ha pulsado este botón volver a repintar las cajas de texto
                //puesto que los controles creados en tiempo de ejecución se borran en cada postback, hay que repintarlos
                Session["pintar"] = "pinta";
                creatextos();
                break;
           case "mostrar":
                try //el try catch está para que no de error si previamente no hemos creado las cajas de texto
                {
                    for (var i = 1; i < 3; i++)
                    {
                        string nombre = "txt" + i.ToString();
                        System.Web.UI.WebControls.TextBox c = (System.Web.UI.WebControls.TextBox)FindControl(nombre);

                        System.Web.UI.WebControls.Label lbl7 = new System.Web.UI.WebControls.Label();
                        lbl7.Text = c.Text;
                        Panel2.Controls.Add(lbl7);
                        Panel2.Controls.Add(new LiteralControl("<br />"));
                    }

                 }
                 catch (Exception ex)
                 {
                    MessageBox.Show(ex.Message);
                }
                
                break;
        }


    }
    protected void creatextos()
    {
        System.Web.UI.WebControls.TextBox txt;
        for (var i = 1; i < 3; i++)
        {
            txt = new System.Web.UI.WebControls.TextBox();
            txt.Text = "";
            txt.ID = "txt" + i.ToString();
            //ponemos la propiedad EnableViewState a true para que los controles no pierdan su valor en el postback
            txt.EnableViewState = true;
            Panel2.Controls.Add(txt);
            txt.AutoPostBack = true;

             txt.TextChanged += new EventHandler(this.txt_TextChanged);
            Panel2.Controls.Add(new LiteralControl("<br />"));
        }
    }

    protected void txt_TextChanged(object sender, EventArgs e)
    {//sender es el objeto donde ocurre el evento
        Session["pintar"] = "pinta";
        System.Web.UI.WebControls.TextBox texto;
        texto = (System.Web.UI.WebControls.TextBox)sender;
        MessageBox.Show(texto.ID);
       
    }




}