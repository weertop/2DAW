using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    //https://msdn.microsoft.com/es-es/library/87069683(v=vs.80).aspx
    //Enlace sobre estado de la sesión


    protected void Page_Load(object sender, EventArgs e)
    {
        //obtenemos el contenido de una caja de texto utilizando el método PreviousPage
        //TextBox txt = (TextBox)Page.PreviousPage.FindControl("TextBox1");
        ////if (txt != null)
        //    TextBox1.Text = Server.HtmlEncode(txt.Text);

        //obtenemos el valor de dos variables de sesión
        TextBox1.Text = Session["nombre"].ToString();
        TextBox2.Text = Session["numero"].ToString();

        //Obtenemos la fecha seleccionada del calendario de la primera página con el método previouspage
        //Calendar cal = (Calendar)Page.PreviousPage.FindControl("Calendar1");
        // Calendar1.SelectedDate = cal.SelectedDate; 

        //Obtenemos la fecha seleccionada del calendario de la primera página con una variable de sesión
        TextBox3.Text = Session["fecha"].ToString();
        Calendar1.SelectedDate = Convert.ToDateTime(Session["fecha"]);

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}