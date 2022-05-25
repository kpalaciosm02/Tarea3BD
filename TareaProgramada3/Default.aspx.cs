using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;

namespace TareaProgramada3
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //load_Data();
        }
        protected void load_Data()
        {
            string ruta = "~/Scripts/DatosTarea2.xml";
            // try
            //{
            SqlConnection con = new SqlConnection("Data Source = cr-dbs.database.windows.net; Initial Catalog = 'TareaTres'; Persist Security Info = True; User ID = admin2022; Password = server2022!!");
            con.Open();


            Console.WriteLine("connected");
            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            com.Connection = con; //Pass the connection object to Command
            com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
            com.CommandText = "CargarXML"; //Stored Procedure Name

            com.Parameters.Add("@inRutaXML", SqlDbType.VarChar).Value = ruta;
            com.ExecuteNonQuery();


            //}
            //catch (Exception ex)
            //{

            //}
        }
    }
}