using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Inventory
{
    public partial class AddVendor : System.Web.UI.Page
    {
        SqlConnection loSqlConnection = null;
        SqlCommand loSqlCommand = null;
        SqlDataAdapter loSqlDataAdapter = null;
        DataTable loDataTable = null;
        string cs = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (!string.IsNullOrEmpty(Request.QueryString["VendorId"]))
                    {
                        int VendorId = Convert.ToInt32(Request.QueryString["VendorId"]);
                        using (loSqlConnection = new SqlConnection(cs))
                        {
                            loSqlConnection.Open();
                            string queryForSelect = "SELECT company_name,vendor_name,mobile,gst_number,address,city,state,pin from tbl_vendor where id=" + VendorId + "";
                            using (loSqlCommand = new SqlCommand(queryForSelect, loSqlConnection))
                            {
                                using (loSqlDataAdapter = new SqlDataAdapter(loSqlCommand))
                                {
                                    using (loDataTable = new DataTable())
                                    {
                                        loSqlDataAdapter.Fill(loDataTable);
                                        lblId.Text = Convert.ToString(VendorId);
                                        txtCompanyName.Text = loDataTable.Rows[0]["company_name"].ToString();
                                        txtVendorName.Text = loDataTable.Rows[0]["vendor_name"].ToString();
                                        txtMobile.Text = loDataTable.Rows[0]["mobile"].ToString();
                                        txtGstNumber.Text = loDataTable.Rows[0]["gst_number"].ToString();
                                        txtAddress.Text = loDataTable.Rows[0]["address"].ToString();
                                        txtCity.Text = loDataTable.Rows[0]["city"].ToString();
                                        txtState.Text = loDataTable.Rows[0]["state"].ToString();
                                        txtPin.Text = loDataTable.Rows[0]["pin"].ToString();
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

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                using (loSqlConnection = new SqlConnection(cs))
                {
                    loSqlConnection.Open();
                    string queryForUpdate = "UPDATE tbl_vendor set company_name='"+txtCompanyName.Text+"' ,vendor_name='" + txtVendorName.Text + "',mobile=" + txtMobile.Text + ",gst_number='" + txtGstNumber.Text + "',address='" + txtAddress.Text + "',city='" + txtCity.Text + "',state='"+txtState.Text+ "',pin="+txtPin.Text+",d_by=" + Convert.ToInt32(Session["id"]) + ",d_date='" + DateTime.Now.ToString("yyyy-MM-dd hh:MM:ss") + "' WHERE id=" + lblId.Text + "";
                    using (loSqlCommand = new SqlCommand(queryForUpdate, loSqlConnection))
                    {
                        loSqlCommand.ExecuteNonQuery();
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data Updated Successfully!!')", true);
                        ResetControl();
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        private void ResetControl()
        {
            txtCompanyName.Text = string.Empty;
            txtVendorName.Text = string.Empty;
            txtMobile.Text = string.Empty;
            txtGstNumber.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtState.Text = string.Empty;
            txtPin.Text = string.Empty;
        }
    }
}