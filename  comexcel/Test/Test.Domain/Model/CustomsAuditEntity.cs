using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Domain.Model
{
    public class CustomsAuditEntity
    {
       public string ID{set;get;}
       public string InvoiceNo{set;get;}
       public string SInvoiceNo { set; get; }
       public string IRegisterNo{set;get;}
       public string IBond{set;get;}
       public string TotalFabric{set;get;}
       public string AdjustReg{set;get;}
       public string AdjustRegPage{set;get;}
       public string CurrentDate{set;get;}
       public string UserName { set; get; }


    }
}
