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
    public partial class AddSale : System.Web.UI.Page
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
                txtSaleDate.Attributes.Add("readonly", "readonly");
                txtInvoice.Attributes.Add("readonly", "readonly");
                txtSalePrice.Attributes.Add("readonly", "readonly");
                txtGstPrice.Attributes.Add("readonly", "readonly");
                txtTotalPrice.Attributes.Add("readonly", "readonly");
                txtBasePrice.Attributes.Add("readonly", "readonly");
                txtGstPrice.Attributes.Add("readonly", "readonly");
                txtPayble.Attributes.Add("readonly", "readonly");

                txtSaleDate.Text = DateTime.Now.ToString("dd/MMMM/yyyy");
                string currentDay = DateTime.Now.Day.ToString("00");
                string currentMonth = DateTime.Now.Month.ToString("00");
                string invoice = "INV";
                string queryForSaleId = (int.Parse(GetSaleId()) + 1) + "";
                string invoiceNumber = String.Concat(invoice, currentMonth, currentDay, queryForSaleId);
                txtInvoice.Text = invoiceNumber;

                this.BindDdlItem();
            }
        }

        protected string GetSaleId()
        {
            loSqlConnection = new SqlConnection(cs);
            loSqlConnection.Open();
            string queryForItemId = "SELECT MAX(id) FROM tbl_sale";
            loSqlCommand = new SqlCommand(queryForItemId, loSqlConnection);
            loSqlDataAdapter = new SqlDataAdapter(loSqlCommand);
            loDataTable = new DataTable();
            loSqlDataAdapter.Fill(loDataTable);
            string saleId = loDataTable.Rows[0][0].ToString();
            return (saleId == "") ? "0" : saleId;
        }
        /// <summary>
        /// dropdown for Items
        /// </summary>
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
                                ddlItem.Items.Insert(0, "--Select Item--");
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

                int status = 1;
                int c_By = Convert.ToInt32(Session["Id"].ToString());


                string queryForSaleMaster = "INSERT INTO tbl_sale(sale_date,invoice,customer_name,mobile,address,base_price,gst_price,discount,payble,status,c_by,c_date)VALUES(@sale_date,@invoice,@customer_name,@mobile,@address,@base_price,@gst_price,@discount,@payble,@status,@c_by,@c_date)";
                loSqlCommand = new SqlCommand(queryForSaleMaster, loSqlConnection);
                loSqlCommand.Parameters.AddWithValue("@sale_date", txtSaleDate.Text);
                loSqlCommand.Parameters.AddWithValue("@invoice", txtInvoice.Text);
                loSqlCommand.Parameters.AddWithValue("@customer_name", txtCustomerName.Text);
                loSqlCommand.Parameters.AddWithValue("@mobile", txtCustomerMobile.Text);
                loSqlCommand.Parameters.AddWithValue("@address", txtAddress.Text);
                loSqlCommand.Parameters.AddWithValue("@base_price", txtBasePrice.Text);
                loSqlCommand.Parameters.AddWithValue("@gst_price", txtGstPrice.Text);
                loSqlCommand.Parameters.AddWithValue("@discount", txtDiscount.Text);
                loSqlCommand.Parameters.AddWithValue("@payble", txtPayble.Text);
                loSqlCommand.Parameters.AddWithValue("@status", status);
                loSqlCommand.Parameters.AddWithValue("@c_by", c_By);
                loSqlCommand.Parameters.AddWithValue("@c_date", txtSaleDate.Text);
                loSqlCommand.ExecuteNonQuery();
                string saleId = GetSaleId();

                int hdcount = int.Parse(Request.Form["hdncount"]);
                for (int i = 0; i < hdcount; i++)
                {

                    string itemIdText = Request.Form["myItem_" + i];
                    string myPrice = Request.Form["myPrice_" + i];
                    string myQty = Request.Form["myQty_" + i];
                    string myGst = Request.Form["myGst_" + i];
                    string myTotal = Request.Form["myTotal_" + i];
                    

                    string queryForddl_Item = "SELECT * FROM tbl_item Where item_name ='" + itemIdText + "'";
                    loSqlCommand = new SqlCommand(queryForddl_Item, loSqlConnection);
                    loSqlDataAdapter = new SqlDataAdapter(loSqlCommand);
                    loDataTable = new DataTable();
                    loSqlDataAdapter.Fill(loDataTable);
                    string itemId = loDataTable.Rows[0]["id"].ToString();

                    string queryForPurchaseId = "SELECT COUNT(*) FROM tbl_purchaseDetails WHERE item_id ='" + itemId + "' and quantity>=" + myQty;
                    loSqlCommand = new SqlCommand(queryForPurchaseId, loSqlConnection);
                    loSqlDataAdapter = new SqlDataAdapter(loSqlCommand);
                    loDataTable = new DataTable();
                    loSqlDataAdapter.Fill(loDataTable);
                    string purchaseDetailsId = loDataTable.Rows[0][0].ToString();

                    if (purchaseDetailsId == "1")
                    {
                        string queryForUpdatePurchaseDetails = "UPDATE tbl_purchaseDetails SET quantity=quantity - " + myQty + ", total_price=total_price -" + myTotal + " WHERE item_id='" + itemId + "'";
                        loSqlCommand = new SqlCommand(queryForUpdatePurchaseDetails, loSqlConnection);
                        loSqlCommand.ExecuteNonQuery();

                        string queryForPurchaseDetails = "INSERT INTO tbl_saleDetails(sale_id,item_id,sale_price,quantity,gst_percent,total_price,status,c_by,c_date)VALUES(@sale_id,@item_id,@sale_price,@quantity,@gst_percent,@total_price,@status,@c_by,@c_date)";
                        loSqlCommand = new SqlCommand(queryForPurchaseDetails, loSqlConnection);
                        loSqlCommand.Parameters.AddWithValue("@sale_id", saleId);
                        loSqlCommand.Parameters.AddWithValue("@item_id", itemId);
                        loSqlCommand.Parameters.AddWithValue("@sale_price", myPrice);
                        loSqlCommand.Parameters.AddWithValue("@quantity", myQty);
                        loSqlCommand.Parameters.AddWithValue("@gst_percent", myGst);
                        loSqlCommand.Parameters.AddWithValue("@total_price", myTotal);
                        loSqlCommand.Parameters.AddWithValue("@status", status);
                        loSqlCommand.Parameters.AddWithValue("@c_by", c_By);
                        loSqlCommand.Parameters.AddWithValue("@c_date", txtSaleDate.Text);
                        loSqlCommand.ExecuteNonQuery();
                    }

                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Quantity is too much "+myQty+" must be less than available quantity!')", true);
                    }

                }
                this.ResetControl();
                //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data Successfully Submitted!')", true);
                //Response.Redirect("SaleList.aspx", false);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        private void ResetControl()
        {
            txtCustomerName.Text = string.Empty;
            txtCustomerMobile.Text = string.Empty;
            txtAddress.Text = string.Empty;
            ddlItem.SelectedIndex = -1;
            txtSalePrice.Text = string.Empty;
            txtQty.Text = string.Empty;
            txtGstPercent.Text = string.Empty;
            txtTotalPrice.Text = string.Empty;
            txtBasePrice.Text = string.Empty;
            txtGstPrice.Text = string.Empty;
            txtDiscount.Text = string.Empty;
            txtPayble.Text = string.Empty;
        }
    }
}