using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Test.Domain.Model
{
    public class BEInfoEntity
    {
        public string ID { set; get; }
        public string BENo { set; get; }
        [RegularExpression(@"(\S)+", ErrorMessage = "White space is not allowed")]
        public string BEDate { set; get; }
    }
}
