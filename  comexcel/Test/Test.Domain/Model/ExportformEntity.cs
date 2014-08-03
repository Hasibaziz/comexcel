using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Domain.Model
{
   public class ExportformEntity
    {
       public string ID { set; get; }
       public string ContractNo { set; get; }
       public string ContractDate { set; get; }
       public string InvoiceNo { set; get; }
       public string InvoiceDate { set; get; }
       public string ExporterID { set; get; }
       public string ExporterName { set; get; }
       public string RegDetails { set; get; }
       public string ConsigneeID { set; get; }
       public string ConsigneeName { set; get; }
       public string NotifyID { set; get; }
       public string NotifyName { set; get; }
       public string HSCodeID { set; get; }
       public string HSCode { set; get; }
       public string ShortName { set; get; }
       public string DestinationID { set; get; }
       public string CountryCode { set; get; }
       public string Name { set; get; }
       public string Port { set; get; }    
       public string FOBValue { set; get; }
       public string CMValue { set; get; }


    }
}
