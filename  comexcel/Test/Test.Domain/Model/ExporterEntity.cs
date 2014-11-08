using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ComponentModel.DataAnnotations;

namespace Test.Domain.Model
{
  public  class ExporterEntity
    {
        public string ID { set; get; }
        public string ExporterNo { set; get; }
        //[Required(ErrorMessage = "* [Exporter Name] is required")]
        //[StringLength(150, ErrorMessage = "Max length 150 characters")]
        //[Range(0, 150)]
        public string ExporterName { set; get; }
        public string RegDetails { set; get; }
        public string EPBReg { set; get; }
    }
}
