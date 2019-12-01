using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    static Boolean activa = false;

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
        
        Label1.Text = hora.Hour.ToString() + ":" + hora.Minute.ToString() + ":" + hora.Second.ToString();
        DateTime fechaact = Convert.ToDateTime(Label1.Text);
       
        
        DateTime fechalarm = Convert.ToDateTime(TextBox1.Text);
       
        if (activa)
        {
            if (fechaact >= fechalarm)
            {
                MessageBox.Show("alarma");
               
              
                
            }
        }
        //Label2.Text = hora.ToShortTimeString();
        //Label3.Text = hora.TimeOfDay.ToString();
        //Label4.Text = hora.ToLongTimeString();
      
     }

    protected void Button1_Click(object sender, EventArgs e)
    { 
         activa = true;
          Button1.BackColor = Color.Yellow;
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        activa = false;
       
        Button1.BackColor = Color.White;
    }

    
}