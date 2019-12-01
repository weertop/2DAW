﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class _Default : System.Web.UI.Page
{
    
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
        Label2.Text = hora.ToShortTimeString();
        Label3.Text = hora.TimeOfDay.ToString();
        Label4.Text = hora.ToLongTimeString();
      
     }
}