using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Test.Domain.Model
{
   public class ExportformEntity
    {
       public string ID { set; get; }
       public string ContractNo { set; get; }

       [Required(ErrorMessage = "* [Item Name] is required")]
       [StringLength(50, ErrorMessage = "Max length 50 characters")]       
       public string ItemName { set; get; }
       [Display(Name = "Contract Date")]
       [Required(ErrorMessage = "{0} is required!")]
       public string ContractDate { set; get; }

       public string TTNo { set; get; }
       public string TTDate { set; get; }

       [Display(Name = "Invoice No")]
       [Required(ErrorMessage = "{0} is required!")]
       public string InvoiceNo { set; get; }
       [Display(Name = "Invoice Date")]
       [Required(ErrorMessage = "{0} is required!")]
       public string InvoiceDate { set; get; }
       [Display(Name = "Exporter Name")]
       [Required(ErrorMessage = "{0} is required!")]
       public string ExporterID { set; get; }
       public string ExporterName { set; get; }
       public string RegDetails { set; get; }
       [Display(Name = "Consignee Name")]
       [Required(ErrorMessage = "{0} is required!")]
       public string ConsigneeID { set; get; }
       public string ConsigneeName { set; get; }
       [Display(Name = "Notify Name")]
       [Required(ErrorMessage = "{0} is required!")]
       public string NotifyID { set; get; }
       public string NotifyName { set; get; }
       //[Display(Name = "H.S. Code")]
       //[Required(ErrorMessage = "{0} is required!")]
       //public string HSCodeID { set; get; }
       public string HSCode { set; get; }
       public string HSCodeName { set; get; }
       public string ShortName { set; get; }
       public string HSCodesecond { set; get; }
       public string HSs { set; get; }
       [Display(Name = "Transport Name")]
       [Required(ErrorMessage = "{0} is required!")]
       public string TransportID { set; get;}
       public string TName { set; get; }
       public string TPort { set; get; }
       [Display(Name = "Destination Name")]
       [Required(ErrorMessage = "{0} is required!")]
       public string DestinationID { set; get; }
       public string CountryCode { set; get; }
       public string Name { set; get; }
       public string Port { set; get; }
       public string CPTValue { set; get; }
       [Display(Name = "FOB Value")]
       [Required(ErrorMessage = "{0} is required!")]
       public string FOBValue { set; get; }
       [Display(Name = "CM Value")]
       [Required(ErrorMessage = "{0} is required!")]
       public string CMValue { set; get; }
       public string Section { set; get; }

       /// <summary>
       /// if use like public Units Unit { set; get; }  Units type Unit variable the it 
       /// will pass the Content of A DropDown List But
       /// if Pass like  public string Unit { set; get; }  then Only Value will pass from the 
       /// DropDown List.
       /// </summary>
       [Display(Name = "Unit")]
       [Required(ErrorMessage = "{0} is required!")]
       public string Unit { set; get; }
       [Display(Name = "Quantity")]
       [Required(ErrorMessage = "{0} is required!")]
       public string Quantity { set; get; }
       [Display(Name = "Currency")]
       [Required(ErrorMessage = "{0} is required!")]
       public string Currency { set; get; }
       [Display(Name = "Incoterm")]
       [Required(ErrorMessage = "{0} is required!")]
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
           CPT = 2,
           Others = 3,
       }

    }
}
