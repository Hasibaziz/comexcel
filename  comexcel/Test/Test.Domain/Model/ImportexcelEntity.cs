using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Domain.Model
{
   public class ImportexcelEntity
    {
       public string ID { set; get; }
       public string SContract { set; get; }
       public string UDNo { set; get; }
       public string AMDNo { set; get; }
       public string AMDDate { set; get; }
       public string Factory { set; get; }
       public string Invoice { set; get; }
       public string Category { set; get; }
       public string Item { set; get; }
       public string QTY { set; get; }
       public string Unit {set;get;}
       public string TotalValue { set; get; }
       public string BENo { set; get; }
       public string BEDate { set; get; }
       public string Passbook { set; get; }
       public string Pageno { set; get; }
       public string BLNo { set; get; }
       public string Mode { set; get; }
       public string ImportDate { set; get; }

       public string SumQTY { set; get; }
       public string SumTotalval { set; get; }

       public CategoryEntity CategoryID { set; get; }
    }
}
