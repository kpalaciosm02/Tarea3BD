using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TareaProgramada3.WebPages
{
    public partial class Empleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                SqlConnection con = new SqlConnection("Data Source = cr-dbs.database.windows.net; Initial Catalog = 'TareaDOS'; Persist Security Info = True; User ID = admin2022; Password = server2022!!");
                con.Open();


                Console.WriteLine("connected");
                SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
                com.Connection = con; //Pass the connection object to Command
                com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
                com.CommandText = "spListarEmpleados"; //Stored Procedure Name


                con.Open();

                GridView1.EmptyDataText = "No Records Found";
                GridView1.DataSource = com.ExecuteReader();
                GridView1.DataBind();



            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[6].Text;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Nombre = TextBox1.Text;
            string idTipoIden = TextBox2.Text;
            string ValorId = TextBox3.Text;
            string IdDep = TextBox4.Text;
            string Puesto = TextBox5.Text;
            string Fecha = TextBox6.Text;


            SqlConnection con = new SqlConnection("Data Source = cr-dbs.database.windows.net; Initial Catalog = 'TareaTres'; Persist Security Info = True; User ID = admin2022; Password = server2022!!");
            con.Open();


            Console.WriteLine("connected");
            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            com.Connection = con; //Pass the connection object to Command
            com.CommandType = CommandType.StoredProcedure; // We will use stored procedure.
            com.CommandText = "spModEmpleado"; //Stored Procedure Name


            com.Parameters.Add("@inNombre", SqlDbType.VarChar).Value = Nombre;
            com.Parameters.Add("@inNombreOr", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[1].Text; ;

            com.Parameters.Add("@inIdTipoIden", SqlDbType.VarChar).Value = idTipoIden;
            com.Parameters.Add("@inIdTipoIdenOr", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[2].Text; ;

            com.Parameters.Add("@inIdDep", SqlDbType.VarChar).Value = IdDep;
            com.Parameters.Add("@inIdDepOr", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[3].Text; ;

            com.Parameters.Add("@inValorId", SqlDbType.VarChar).Value = ValorId;
            com.Parameters.Add("@inValorIdOr", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[4].Text; ;

            com.Parameters.Add("@inPuesto", SqlDbType.VarChar).Value = Puesto;
            com.Parameters.Add("@inPuestoOr", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[5].Text; ;

            com.Parameters.Add("@inFecha", SqlDbType.VarChar).Value = Fecha;
            com.Parameters.Add("@inFechaOr", SqlDbType.VarChar).Value = GridView1.SelectedRow.Cells[6].Text; ;



            com.ExecuteNonQuery();


            Label1.Text = "Se modifico el puesto";
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
        }
    }
}