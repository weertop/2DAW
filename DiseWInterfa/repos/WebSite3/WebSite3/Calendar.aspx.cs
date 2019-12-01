using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //con las siguientes sentencias estoy cambiando la fecha actual del calendario
        //si no pongo nada se marca la fecha actual por defecto
        DateTime tomorrow = DateTime.Today.AddDays(1);
        Calendar1.TodaysDate = tomorrow;
        Calendar1.SelectedDate = Calendar1.TodaysDate;
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        // propiedad para cambiar el tipo de seleccion en el calendario
        // en tiempo de diseno la propiedad calendar1.selectionmode
        //Calendar1.SelectionMode = CalendarSelectionMode.Day;
        Calendar1.SelectionMode = CalendarSelectionMode.DayWeek;

        //fecha unica si el usuario selecciono una fecha se guarda en "selected date"
        //si el usuario selecciono varias fechas,esta propiedad 

        TextBox1.Text = Calendar1.SelectedDate.ToLongDateString();
    }
}