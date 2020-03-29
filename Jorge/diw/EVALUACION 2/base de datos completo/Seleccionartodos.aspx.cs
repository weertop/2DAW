using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

//referencias MySQL
using MySql.Data;
using MySql.Data.MySqlClient;

public partial class Seleccionartodos : System.Web.UI.Page
{
    MySqlConnection conexion = new MySqlConnection("DataBase=bd1;DataSource=localhost;user=Visual2;Password=Visual2;Port=3306");
    static MySqlDataReader datareader;
    static MySqlCommand comando1;
    MySqlParameter idp;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        comando1= new MySqlCommand("Select * from tabla1", conexion);
        if (!IsPostBack) { ejecutar(); }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    public void ejecutar()
    {
        conexion.Close();
        conexion.Open();
        datareader = comando1.ExecuteReader();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
            datareader.Read();
            TextBox1.Text = datareader.GetString(2);
            TextBox2.Text = datareader.GetString(1);
            TextBox3.Text = datareader.GetString(3);
        
        
    }
}