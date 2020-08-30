using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Inventory
{
    public partial class AddItem : System.Web.UI.Page
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
                    if (!string.IsNullOrEmpty(Request.QueryString["itemId"]))
                    {
                        int itemId = Convert.ToInt32(Request.QueryString["itemId"]);
                        using (loSqlConnection = new SqlConnection(cs))
                        {
                            loSqlConnection.Open();
                            string queryForSelect = "SELECT item_name,item_price,gst_percent,hsn_code from tbl_item where id=" + itemId + "";
                            using (loSqlCommand = new SqlCommand(queryForSelect, loSqlConnection))
                            {
                                using (loSqlDataAdapter = new SqlDataAdapter(loSqlCommand))
                                {
                                    using (loDataTable = new DataTable())
                                    {
                                        loSqlDataAdapter.Fill(loDataTable);
                                        lblId.Text = Convert.ToString(itemId);
                                        txtItemName.Text = loDataTable.Rows[0]["item_name"].ToString();
                                        txtItemPrice.Text = loDataTable.Rows[0]["item_price"].ToString();
                                        txtGstPercent.Text = loDataTable.Rows[0]["gst_percent"].ToString();
                                        txtHsnCode.Text = loDataTable.Rows[0]["hsn_code"].ToString();
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
                    string queryForUpdate = "UPDATE tbl_item set item_name='" + txtItemName.Text + "',item_price=" + txtItemPrice.Text + ",gst_percent=" + txtGstPercent.Text + ",hsn_code='" + txtHsnCode.Text + "',d_by=" + Convert.ToInt32(Session["id"]) + ",d_date='" + DateTime.Now.ToString("yyyy-MM-dd hh:MM:ss") + "' WHERE id=" + lblId.Text + "";
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
            txtItemName.Text = string.Empty;
            txtItemPrice.Text = string.Empty;
            txtGstPercent.Text = string.Empty;
            txtHsnCode.Text = string.Empty;
        }
    }
}