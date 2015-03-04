using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Test.Domain.Model
{
   public class ComsalesinfoEntity
    {
      public string  ID { set; get; }     
      public string  InvoiceNo { set; get; }
      public string  SInvoiceNo { set; get; }
      [Display(Name = "Order No")]
      [Required(ErrorMessage = "{0} is required!")]
      public string  OrderNo { set; get; }
      public string  StyleNo { set; get; }
      public string  ProductType { set; get; }
          
     
      public string  ShipbordingDate { set; get; }
     
      [Display(Name = "BL No")]
      [Required(ErrorMessage = "{0} is required!")]
      public string  BLNo { set; get; }
      //[Display(Name = "BL Date")]
      //[Required(ErrorMessage = "{0} is required!")]
      public string  BLDate { set; get; }
      //[Display(Name = "ETA Date")]
      //[Required(ErrorMessage = "{0} is required!")]
      public string  ETADate { set; get; }
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string  RevQty { set; get; }
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string  RevisedFOBValue { set; get; }
      public string  RevisedCMValue { set; get; }
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string  CartonQty { set; get; }
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string  CBMValue { set; get; }

      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string VesselName { set; get; }

      //[Display(Name = "This Field")]
      //[Required(ErrorMessage = "{0} is required!")]
      //public string TTLCTN { set; get; }

      public string Quantity { set; get; }
      public string FOBValue { set; get; }
      public string CMValue { set; get; }
      public string EXPNo { set; get; }
      public string EXPDate { set; get; }
      public string ExFactoryDate { set; get; }
      public string RTransport { set; get; }      //Revise Transport;
      public string CnFAgent { set; get; }

      public string TTNo { set; get; }
      public string TTDate { set; get; }

      public string ModifiedBy { set; get; }
      public string ModifiedOn { set; get; }    

      public string FinalQty { set; get; }
      public string FinalFOB { set; get; }
      public string FinalCM { set; get; }
      public string Remarks { set; get; }

      public string UserName { set; get; }
      public string CurrentDate { set; get; }

    }
}
