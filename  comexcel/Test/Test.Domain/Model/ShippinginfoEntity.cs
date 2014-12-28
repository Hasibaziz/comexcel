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
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      [DisplayFormat(DataFormatString = "{0:dd-MMM-yyyy}", ApplyFormatInEditMode = true)]
      public string EXPDate{ set;get;}
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string ExFactoryDate{ set;get;}
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string CnFAgent{ set;get;}

      public string TransportID{ set;get;}
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string SBNo{ set;get;}
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string SBDate{ set;get;}
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string VesselNo{ set;get;}
      [Display(Name = "This Field")]
      [Required(ErrorMessage = "{0} is required!")]
      public string CargorptDate { set; get; }

      public string SInvoiceNo { set; get; }

      public string UserName { set; get; }
      public string CurrentDate { set; get; }

    }
}
