using System;
using System.Data.SqlClient;
using System.Data;

namespace TareaProgramada3.WebPages
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Usuario = TextBox1.Text;
            string Password = TextBox2.Text;
            try
            {
                if (TextBox1.Text != "" && TextBox2.Text != "")
                {

                    SqlConnection con = new SqlConnection("Data Source = cr-dbs.database.windows.net; Initial Catalog = 'TareaTres'; Persist Security Info = True; User ID = admin2022; Password = server2022!!");
                    con.Open();


                    Console.WriteLine("connected");
                    SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
                    com.Connection = con; //Pass the connection object to Command
                    com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                    com.CommandText = "spVerificarUsuario"; //Stored Procedure Name



                    com.Parameters.Add("@inUsuario", SqlDbType.VarChar).Value = Usuario;
                    com.Parameters.Add("@inPassword", SqlDbType.VarChar).Value = Password;

                    com.Parameters.Add("@outUsuario", SqlDbType.VarChar, 100);
                    com.Parameters["@outUsuario"].Direction = ParameterDirection.Output;

                    com.Parameters.Add("@outPassword", SqlDbType.VarChar, 100);
                    com.Parameters["@outPassword"].Direction = ParameterDirection.Output;

                    com.ExecuteNonQuery();

                    String Us = Convert.ToString(com.Parameters["@outUsuario"].Value);
                    String Pass = Convert.ToString(com.Parameters["@outPassword"].Value);



                    if (Usuario == Us && Password == Pass)
                    {
                        Label1.Text = "Usuario admitido";
                        //cambiar pagina o habilitar botones del menu principal
                    }
                    else
                    {
                        Label1.Text = "Usuario o contraseña incorrecta";
                        TextBox2.Text = "";
                    }


                }
                else
                {
                    Label1.Text = "Debe ingresar la informacion solicitada";
                    //conexion.Close(); 
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}