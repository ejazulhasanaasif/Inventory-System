using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Inventory
{
    public partial class AddPurchase : System.Web.UI.Page
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
                txtPurchaseDate.Attributes.Add("readonly", "readonly");
                txtPurchasePrice.Attributes.Add("readonly", "readonly");
                txtGst.Attributes.Add("readonly", "readonly");
                txtTotalPrice.Attributes.Add("readonly", "readonly");
                txtBasePrice.Attributes.Add("readonly", "readonly");
                txtGstPrice.Attributes.Add("readonly", "readonly");
                txtPayble.Attributes.Add("readonly", "readonly");
                txtInvoice.Attributes.Add("readonly", "readonly");
                txtPurchaseDate.Text = DateTime.Now.ToString("dd/MMMM/yyyy");
                //txtDiscount.Text = "0";

                string currentDay = DateTime.Now.Day.ToString("00");
                string currentMonth = DateTime.Now.Month.ToString("00");
                string invoice = "INV";
                string queryForPurchaseId = (int.Parse(GetPurchaseId()) + 1) + "";
                txtInvoice.Text = String.Concat(invoice, currentMonth, currentDay, queryForPurchaseId);


                this.BindDdlVender();
                this.BindDdlItem();
            }
        }
        /// <summary>
        /// For Generate Invoice Number
        /// </summary>
        /// <returns></returns>
        protected string GetPurchaseId()
        {
            loSqlConnection = new SqlConnection(cs);
            loSqlConnection.Open();
            string queryForPurchaseId = "SELECT MAX(id) FROM tbl_purchase";
            loSqlCommand = new SqlCommand(queryForPurchaseId, loSqlConnection);
            loSqlDataAdapter = new SqlDataAdapter(loSqlCommand);
            loDataTable = new DataTable();
            loSqlDataAdapter.Fill(loDataTable);
            string purchaseId = loDataTable.Rows[0][0].ToString();
            return (purchaseId == "") ? "0" : purchaseId;
        }

        private void BindDdlVender()
        {
            try
            {
                using (loSqlConnection = new SqlConnection(cs))
                {
                    loSqlConnection.Open();
                    string queryForDdlVendor = "SELECT id,vendor_name FROM tbl_vendor where status <> 0";
                    using (loSqlCommand = new SqlCommand(queryForDdlVendor, loSqlConnection))
                    {
                        using (loSqlDataAdapter = new SqlDataAdapter(loSqlCommand))
                        {
                            using (loDataTable = new DataTable())
                            {
                                loSqlDataAdapter.Fill(loDataTable);
                                if (loDataTable.Rows.Count > 0)
                                {
                                    ddlVendor.DataSource = loDataTable;
                                    ddlVendor.DataTextField = "vendor_name";
                                    ddlVendor.DataValueField = "id";
                                    ddlVendor.DataBind();

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

        private void BindDdlItem()
        {
            try
            {
                using (loSqlConnection = new SqlConnection(cs))
                {
                    loSqlConnection.Open();
                    string queryForDdlItem = "SELECT id, item_name FROM tbl_item WHERE status <> 0";
                    using (loSqlCommand = new SqlCommand(queryForDdlItem, loSqlConnection))
                    {
                        using (loSqlDataAdapter = new SqlDataAdapter(loSqlCommand))
                        {
                            using (loDataTable = new DataTable())
                            {
                                loSqlDataAdapter.Fill(loDataTable);
                                if (loDataTable.Rows.Count > 0)
                                {
                                    ddlItem.DataSource = loDataTable;
                                    ddlItem.DataTextField = "item_name";
                                    ddlItem.DataValueField = "id";
                                    ddlItem.DataBind();

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

        private void ResetControl()
        {
            ddlVendor.SelectedIndex = -1;
            txtBasePrice.Text = string.Empty;
            txtGstPrice.Text = string.Empty;
            txtDiscount.Text = string.Empty;
            txtPayble.Text = string.Empty;

        }


        [WebMethod]
        public static List<ItemEntity> AssignItemGst(string name)
        {
            ItemEntity iteemGstPerAndPrice = null;
            var data = new List<ItemEntity>();

            try
            {

                string cs = ConfigurationManager.ConnectionStrings["mydb"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                string queryForItem = "select gst_percent,item_price from tbl_item WHERE    id ='" + name + "'";
                SqlCommand cmd = new SqlCommand(queryForItem, con);
                //SqlDataReader dr = cmd.ExecuteReader();
                SqlDataAdapter loSqlDataAdapter = new SqlDataAdapter(cmd);
                DataTable loDataTable = new DataTable();
                loSqlDataAdapter.Fill(loDataTable);
                iteemGstPerAndPrice = new ItemEntity
                {
                    Price = Convert.ToDecimal(loDataTable.Rows[0]["item_price"]),
                    GSTPercent = Convert.ToInt32(loDataTable.Rows[0]["gst_percent"])
                };

                data.Add(iteemGstPerAndPrice);

            }
            catch (Exception ex)
            {
                throw new Exception("Item not found");
            }

            return data;
        }

        public class ItemEntity
        {
            public int GSTPercent { get; set; }
            public decimal Price { get; set; }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                loSqlConnection = new SqlConnection(cs);
                loSqlConnection.Open();

                string status = "1";
                string c_By = "";
                c_By = Session["Id"].ToString();


                string queryForPuchase = "INSERT INTO tbl_purchase(vender_id,purchase_date,base_price,gst_price,discount,payble,invoice,status,c_by,c_date)VALUES(@vender_id,@purchase_date,@base_price,@gst_price,@discount,@payble,@invoice,@status,@c_by,@c_date)";
                loSqlCommand = new SqlCommand(queryForPuchase, loSqlConnection);
                loSqlCommand.Parameters.AddWithValue("@vender_id", ddlVendor.SelectedItem.Value);
                loSqlCommand.Parameters.AddWithValue("@purchase_date", txtPurchaseDate.Text);
                loSqlCommand.Parameters.AddWithValue("@base_price", txtBasePrice.Text);
                loSqlCommand.Parameters.AddWithValue("@gst_price", txtGstPrice.Text);
                loSqlCommand.Parameters.AddWithValue("@discount", txtDiscount.Text);
                loSqlCommand.Parameters.AddWithValue("@payble", txtPayble.Text);
                loSqlCommand.Parameters.AddWithValue("@invoice", txtInvoice.Text);
                loSqlCommand.Parameters.AddWithValue("@status", status);
                loSqlCommand.Parameters.AddWithValue("@c_by", c_By);
                loSqlCommand.Parameters.AddWithValue("@c_date", txtPurchaseDate.Text);
                loSqlCommand.ExecuteNonQuery();
                string purchaseId = GetPurchaseId();

                int hdcount = int.Parse(Request.Form["hdncount"]);
                for (int i = 0; i < hdcount; i++)
                {

                    string itemIdText = Request.Form["myItem_" + i];
                    string myPrice = Request.Form["myPrice_" + i];
                    string myQty = Request.Form["myQty_" + i];
                    string myGst = Request.Form["myGst_" + i];
                    string myTotal = Request.Form["myTotal_" + i];

                    string queryForddl_Item = "SELECT id FROM tbl_item Where item_name ='" + itemIdText + "'";
                    loSqlCommand = new SqlCommand(queryForddl_Item, loSqlConnection);
                    loSqlDataAdapter = new SqlDataAdapter(loSqlCommand);
                    loDataTable = new DataTable();
                    loSqlDataAdapter.Fill(loDataTable);
                    string itemId = loDataTable.Rows[0]["id"].ToString();

                    string queryForPurchaseId = "SELECT COUNT(*) FROM tbl_purchaseDetails WHERE item_id ='" + itemId + "'";
                    loSqlCommand = new SqlCommand(queryForPurchaseId, loSqlConnection);
                    loSqlDataAdapter = new SqlDataAdapter(loSqlCommand);
                    loDataTable = new DataTable();
                    loSqlDataAdapter.Fill(loDataTable);
                    string purchaseDetailsId = loDataTable.Rows[0][0].ToString();

                    if (purchaseDetailsId == "0")
                    {
                        string queryForPurchaseDetails = "INSERT INTO tbl_purchaseDetails(purchase_id,item_id,purchase_price,quantity,gst_percent,total_price,status,c_by,c_date)VALUES(@purchase_id,@item_id,@purchase_price,@quantity,@gst_percent,@total_price,@status,@c_by,@c_date)";
                        loSqlCommand = new SqlCommand(queryForPurchaseDetails, loSqlConnection);
                        loSqlCommand.Parameters.AddWithValue("@purchase_id", purchaseId);
                        loSqlCommand.Parameters.AddWithValue("@item_id", itemId);
                        loSqlCommand.Parameters.AddWithValue("@purchase_price", myPrice);
                        loSqlCommand.Parameters.AddWithValue("@quantity", myQty);
                        loSqlCommand.Parameters.AddWithValue("@gst_percent", myGst);
                        loSqlCommand.Parameters.AddWithValue("@total_price", myTotal);
                        loSqlCommand.Parameters.AddWithValue("@status", status);
                        loSqlCommand.Parameters.AddWithValue("@c_by", int.Parse(c_By));
                        loSqlCommand.Parameters.AddWithValue("@c_date", txtPurchaseDate.Text);
                        loSqlCommand.ExecuteNonQuery();
                    }
                    else
                    {
                        string queryForUpdatePurchaseDetails = "UPDATE tbl_purchaseDetails SET quantity=quantity + " + myQty + ", total_price=total_price +" + myTotal + " WHERE item_id='" + itemId + "'";
                        loSqlCommand = new SqlCommand(queryForUpdatePurchaseDetails, loSqlConnection);
                        loSqlCommand.ExecuteNonQuery();
                    }
                }

                //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data successfully Submitted')", true);
                //Response.Redirect("PurchaseList.aspx");
                this.ResetControl();
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data successfully Submitted!!')", true);
        }
    }
}