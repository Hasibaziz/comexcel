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

       public string TTNo { set; get; }
       public string TTDate { set; get; }

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
       public string TransportID { set; get;}
       public string TName { set; get; }
       public string TPort { set; get; }
       public string DestinationID { set; get; }
       public string CountryCode { set; get; }
       public string Name { set; get; }
       public string Port { set; get; }    
       public string FOBValue { set; get; }
       public string CMValue { set; get; }
       public string Section { set; get; }
       /// <summary>
       /// if use like public Units Unit { set; get; }  Units type Unit variable the it 
       /// will pass the Content of A DropDown List But
       /// if Pass like  public string Unit { set; get; }  then Only Value will pass from the 
       /// DropDown List.
       /// </summary>
       public string Unit { set; get; }
       public string Quantity { set; get; }
       public string Currency { set; get; }
       public string Incoterm { set; get; }

       public string ExpNo { set; get; }
       public string ExpDate { set; get; }
       public string BLNo { set; get; }
       public string BLDate { set; get; }
       public string ExFactoryDate { set; get; }
       public string CurrentDate { set; get; }

       public int HeaderSpaces { set; get; }

       public enum Sections
       {
          PRIVATE = 2,          
       }
       public enum Units
       { 
           PCS = 55,
           SET = 56,
       }
       public enum Currencies
       { 
           USDollars = 01,
           EUroes = 02,
           Pound = 03,
       }
       public enum Inconterms
       { 
           FOB = 1,
           Others = 2,
       }

    }
}
