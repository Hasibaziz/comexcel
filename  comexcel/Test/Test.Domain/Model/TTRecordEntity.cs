﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Domain.Model
{
   public class TTRecordEntity
    {
       public string ID { set; get; }
       public string ExporterDetailsID { set; get; }
       public string TTNumber { set; get; }
       public string TTAmount { set; get; }
       public string BankName { set; get; }
       public string TTDate { set; get; }
       public string TTBalance { set; get; }

       public string CMTotal { set; get; }

    }
}
