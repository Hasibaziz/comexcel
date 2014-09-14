using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Test.Domain.Model
{
    public class NotifypartyEntity
    {
        public string ID { set; get; }
        public string NotifyNo { set; get; }
        [Required(ErrorMessage = "* [Notify Name] is required")]
        [StringLength(150, ErrorMessage = "Max length 150 characters")]
        public string NotifyName { set; get; }
    }
}
