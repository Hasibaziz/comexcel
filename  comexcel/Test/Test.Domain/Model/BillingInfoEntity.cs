using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

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
        [Required(ErrorMessage = "SB Date is required! [DD-MM-YYYY]")]
        [DisplayFormat(DataFormatString = "{0:DD-MM-YYYY}", ApplyFormatInEditMode = true)]
        //[RegularExpression(@"^([1-9]|0[1-9]|1[0-2])[- / .]([1-9]|0[1-9]|1[0-9]|2[0-9]|3[0-1])[- / .](1[9][0-9][0-9]|2[0][0-9][0-9])$", ErrorMessage = "SB Date must be in MM-DD-YYYY format.")]
        [RegularExpression(@"^([1-9]|0[1-9]|1[0-9]|2[0-9]|3[0-1])[- / .]([1-9]|0[1-9]|1[0-2])[- / .](1[9][0-9][0-9]|2[0][0-9][0-9])$", ErrorMessage = "SB Date must be in DD-MM-YYYY format.")]   
        public string SBDate{set;get;}
       
        public string DocSubmitDate{set;get;}
       
        public string CourierNo{set;get;}
      
        public string CourierDate{set;get;}
       
        public string BuyerCourierNo{set;get;}
       
        public string BuyerCourierDate{set;get;}
        
        public string LeadTime{set;get;}  
     
        public string BankSubmitDate{set;get;}
        //[Display(Name = "Mode Status")]
        //[Required(ErrorMessage = "{0} is required!")]
        public string ModeStatus { set; get; }

        public string TTNo { set; get; }
        public string TTDate { set; get; }

        public string CurrentDate{set;get;}
        public string UserName { set; get; }

        //public enum ModeStatus
        //{
        //    [Description("SEA PP")]
        //    [Display(Name = "SEA PP")]
        //    SEAP = 1, 
        //    [Description("SEA CC")]     
        //    SEAC = 2,
        //    [Description("AIR PP")]
        //    AIRP = 3,
        //    [Description("AIR CC")]
        //    AIRC = 4,            
        //}

    }
}
