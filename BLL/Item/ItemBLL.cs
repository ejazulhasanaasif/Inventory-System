using System.Collections.Generic;

namespace BLL.Item
{
    public class ItemBLL
    {
        Dictionary<string, object> moParam = null;

        //public bool SaveItems(ItemEntity loItemEntity)
        //{
        //    string lsQry = "INSERT INTO tbl_item(company_name,item_name,item_price,gst,hsn_code,status,c_by,c_date) VALUES(@company_name,@item_name,@item_price,@gst,@hsn_code,@status,@c_by,@c_date)";
        //    moParam = new Dictionary<string, object>();
        //    moParam.Add("@company_name", loItemEntity.stCompanyName);
        //    moParam.Add("@item_name", loItemEntity.stItemName);
        //    moParam.Add("@item_price", loItemEntity.dcItemPrice);
        //    moParam.Add("@gst", loItemEntity.inGst);
        //    moParam.Add("@hsn_code", loItemEntity.stHsnCode);
        //    moParam.Add("@status", loItemEntity.inStatus);
        //    moParam.Add("@c_by", loItemEntity.inC_by);
        //    moParam.Add("@c_date", loItemEntity.dtC_date);
        //    SQLHandler loSQLHandler = new SQLHandler();

        //}
    }
}
