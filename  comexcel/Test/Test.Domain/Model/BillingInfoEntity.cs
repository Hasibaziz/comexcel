using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Test.Domain.Model
{
    public class BillingInfoEntity
    {
        public string ID { set;get; }
        public string InvoiceNo{ set;get; }
        public string SInvoiceNo { set; get; }
        [Display(Name = "SB No")]
        [Required(ErrorMessage = "{0} is required!")]
        public string SBNo{set;get;}
        [Display(Name = "SB Date")]
        [Required(ErrorMessage = "{0} is required!")]
        public string SBDate{set;get;}
       
        public string DocSubmitDate{set;get;}
        [Display(Name = "Courier No")]
        [Required(ErrorMessage = "{0} is required!")]
        public string CourierNo{set;get;}
        [Display(Name = "Courier Date")]
        [Required(ErrorMessage = "{0} is required!")]
        public string CourierDate{set;get;}
        [Display(Name = "Buyer Courier No")]
        [Required(ErrorMessage = "{0} is required!")]
        public string BuyerCourierNo{set;get;}
       
        public string BuyerCourierDate{set;get;}
        
        public string LeadTime{set;get;}  
     
        public string BankSubmitDate{set;get;}
        public string CurrentDate{set;get;}
        public string UserName { set; get; }

    }
}
