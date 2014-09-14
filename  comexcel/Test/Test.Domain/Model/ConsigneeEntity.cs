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
        [StringLength(150, ErrorMessage = "Max length 150 characters")] 
        public string ConsigneeName { set; get; }
    }
}
