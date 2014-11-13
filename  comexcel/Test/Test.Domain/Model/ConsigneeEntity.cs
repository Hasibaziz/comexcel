using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Test.Domain.Model
{
    public class ConsigneeEntity
    {
        public string ID { set; get; }
        public string ConsigneeNo { set; get; }
        [Required(ErrorMessage = "* [Consignee Name] is required")]
        [StringLength(200, ErrorMessage = "Max length 200 characters")] 
        public string ConsigneeName { set; get; }
        public string Country { set; get; }
    }
}
