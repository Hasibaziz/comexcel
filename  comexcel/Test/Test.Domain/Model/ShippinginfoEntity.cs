using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Test.Domain.Model
{
   public class ShippinginfoEntity
    {
      public string ID{ set;get;}
      public string InvoiceNo{ set;get;}
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string EPNo{ set;get;}
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string EPDate{ set;get;}
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string EXPNo{ set;get;}
      [Display(Name = "EXP Date")]
      [Required(ErrorMessage = "EXP Date is required! [DD-MM-YYYY]")]
      [DisplayFormat(DataFormatString = "{0:DD-MM-YYYY}", ApplyFormatInEditMode = true)]
      //[RegularExpression(@"^([1-9]|0[1-9]|1[0-2])[- / .]([1-9]|0[1-9]|1[0-9]|2[0-9]|3[0-1])[- / .](1[9][0-9][0-9]|2[0][0-9][0-9])$", ErrorMessage = "SB Date must be in MM-DD-YYYY format.")]
      [RegularExpression(@"^([1-9]|0[1-9]|1[0-9]|2[0-9]|3[0-1])[- / .]([1-9]|0[1-9]|1[0-2])[- / .](1[9][0-9][0-9]|2[0][0-9][0-9])$", ErrorMessage = "EXP Date must be in DD-MM-YYYY format.")]
      public string EXPDate { set; get; }
      //[Display(Name = "This Field")]
      //[Required(ErrorMessage = "{0} is required!")]
      public string ExFactoryDate{ set;get;}
      //[Display(Name = "This Field")]
      //[Required(ErrorMessage = "{0} is required!")]
      public string CnFAgent{ set;get;}

      public string TransportID{ set;get;}
      //[Display(Name = "This Field")]
      //[Required(ErrorMessage = "{0} is required!")]
      public string SBNo{ set;get;}
      //[Display(Name = "This Field")]
      //[Required(ErrorMessage = "{0} is required!")]
      public string SBDate{ set;get;}
      //[Display(Name = "This Field")]
      //[Required(ErrorMessage = "{0} is required!")]
      public string VesselNo{ set;get;}
      //[Display(Name = "This Field")]
      //[Required(ErrorMessage = "{0} is required!")]
      public string CargorptDate { set; get; }

       //------ Final Status of Invoices --------

      public string BringBack { set; get; }
      public string ShippedOut { set; get; }
      public string ShippedCancel { set; get; }
      public string ShippedBack { set; get; }
      public string Unshipped { set; get; }


      public string SInvoiceNo { set; get; }

      public string UserName { set; get; }
      public string CurrentDate { set; get; }

    }
}
