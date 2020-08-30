using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Item
{
    class ItemEntity
    {
        public int inId { get; set; }
        public string stCompanyName { get; set; }
        public string stItemName { get; set; }
        public decimal dcItemPrice { get; set; }
        public int inGst { get; set; }
        public string stHsnCode { get; set; }
        public int inStatus { get; set; }
        public int inC_by { get; set; }
        public DateTime dtC_date { get; set; }
    }
}
