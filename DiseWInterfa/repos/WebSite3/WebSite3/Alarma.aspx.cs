using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Timers;

public partial class Alarma : System.Web.UI.Page
{
    String horaAlarmaCorrecta;
    bool activo=false;


    protected void Page_Load(object sender, EventArgs e)
    {
        mostrar_hora();
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        mostrar_hora();
        comprobarAl();
    }

    void mostrar_hora()
    {
        DateTime hora = DateTime.Now;

        Label3.Text = hora.Hour.ToString() + ':' + hora.Minute.ToString() + ':' + hora.Second.ToString();


    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String horaAlarma = TextBox1.Text;


        /*if (horaAlarma.Length == 3)
        {
            horaAlarmaCorrecta = horaAlarma.Substring(0, 1) + ':' + horaAlarma.Substring(1, 2);
        }
        else
        {
            horaAlarmaCorrecta = horaAlarma.Substring(0, 2) + ':' + horaAlarma.Substring(2, 2);
        }
       
        Label4.Text = horaAlarmaCorrecta;*/
        horaAlarmaCorrecta = horaAlarma;
        Label4.Text = horaAlarma;

        activo = true;
    }

    public void comprobarAl()
    {

        if(horaAlarmaCorrecta != null && activo) {

            if (Label3.Text == horaAlarmaCorrecta)
            {
                Label6.Text = "alarma despierta";
            }
        }
        else
        {
            Label6.Text = "esperando";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        activo = false;
    }
}