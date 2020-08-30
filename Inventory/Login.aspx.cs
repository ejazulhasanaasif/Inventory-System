using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class Login : System.Web.UI.Page
    {
        //SqlCommand loSqlCommand = null;
        //SqlConnection loSqlConnection = null;
        //SqlDataAdapter loSqlDataAdapter = null;
        //DataSet loDataSet = null;
        string cs = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["name"] != null)
                {
                    Response.Redirect("Dashboard.aspx", false);
                }
            }
        }

        protected void btnSign_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection loSqlConnection = null;
                SqlCommand loSqlCommand = null;
                SqlDataAdapter loSqlDataAdapter = null;
                DataSet loDataSet = null;
                using (loSqlConnection = new SqlConnection(cs))
                {
                    loSqlConnection.Open();
                    string queryForLogin = "select id, email,name,password from tbl_login where email='" + txtEmail.Text + "' and password='" + txtPass.Text + "'";
                    using (loSqlCommand = new SqlCommand(queryForLogin, loSqlConnection))
                    {
                        if (!string.IsNullOrEmpty(loSqlCommand.ToString()) && loSqlCommand.ToString() != string.Empty)
                        {
                            using (loSqlDataAdapter = new SqlDataAdapter(loSqlCommand))
                            {
                                using (loDataSet = new DataSet())
                                {

                                    loSqlDataAdapter.Fill(loDataSet);
                                    if (loDataSet != null && loDataSet.Tables[0].Rows.Count > 0 && loDataSet.ToString() != string.Empty)
                                    {
                                        Session["id"] = Convert.ToString(loDataSet.Tables[0].Rows[0]["id"]);
                                        Session["name"] = Convert.ToString(loDataSet.Tables[0].Rows[0]["name"]);
                                        Session["email"] = Convert.ToString(loDataSet.Tables[0].Rows[0]["email"]);
                                        Session["pass"] = Convert.ToString(loDataSet.Tables[0].Rows[0]["password"]);

                                        if (Convert.ToString(Session["email"]) == txtEmail.Text && Convert.ToString(Session["pass"]) == txtPass.Text)
                                        {
                                            Response.Redirect("Dashboard.aspx", false);
                                        }
                                        else
                                        {
                                            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('your email id and password is wrong!! Try once more....')", true);
                                        }
                                    }
                                    else
                                    {
                                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('your email id and password is wrong!! Try once more....')", true);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}