using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlCommand loSqlCommand = null;
        SqlConnection loSqlConnection = null;
        string cs = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }
        /// <summary>
        /// Adding User Details
        /// </summary>
        private void SaveRegistration()
        {
            try
            {
                using (loSqlConnection = new SqlConnection(cs))
                {
                    loSqlConnection.Open();
                    string queryForRegistration = "INSERT INTO tbl_login(name,email,password) VALUES(@name,@email,@password)";
                    using (loSqlCommand = new SqlCommand(queryForRegistration, loSqlConnection))
                    {
                        loSqlCommand.Parameters.AddWithValue("@name", txtName.Text);
                        loSqlCommand.Parameters.AddWithValue("@email", txtEmail.Text);
                        loSqlCommand.Parameters.AddWithValue("@password", txtPass.Text);
                        loSqlCommand.ExecuteNonQuery();
                        loSqlConnection.Close();
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Thanx for the registered!!! Now you can login..')", true);
                    }
                }
                ResetControl();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                if (loSqlConnection != null)
                    loSqlConnection.Dispose();
            }
        }

        private void ResetControl()
        {
            try
            {
                txtName.Text = "";
                txtEmail.Text = "";
                txtPass.Text = "";
                txtConfirmPass.Text = "";
            }
            catch (Exception ex)

            {
                throw new Exception(ex.Message);
            }
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            SaveRegistration();
        }
    }
}