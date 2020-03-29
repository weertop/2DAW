using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
            crearboton();
        
    }
    protected void crearboton()
    {
        Button btn = new Button();
        btn.Text = "pulsa";
        // Asignar las propiedades necesarias: Text, Enabled, etc.
        // Agregarlo al panel
        Panel1.Controls.Add(btn);
        //Page.Controls.Add(btn);
        //Panel1.Controls.Add(new LiteralControl("&nbsp;&nbsp;&nbsp;"));
        //añadir espacios en blanco
        // Asignarle el evento de "escucha" al click:
        btn.Click += new EventHandler(Btn_OnClick);

    }
    protected void Btn_OnClick(object sender, EventArgs e)
    {
        Label lbl1 = new Label();
        lbl1.Text = "Hola";
        Panel2.Controls.Add(lbl1);
       
        //Panel2.Controls.Add(new LiteralControl("<br />"));
        //añadir una línea 
    }


}