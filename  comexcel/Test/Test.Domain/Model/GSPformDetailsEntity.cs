using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Domain.Model
{
    public class GSPformDetailsEntity
    {
        public string ID { set; get; }       
        public string InvoiceNo { set; get; }
        public string ContractNo { set; get; }
        public string ContractDate { set; get; }
        public string MasterContractNo { set; get; }
        public string MasterContractDate { set; get; }
        public string BuyerContractNo { set; get; }
        public string BuyerContractDate { set; get; }
        public string BKMEANo { set; get; }
        public string BINNo { set; get; }
        public string SBNo { set; get; }
        public string SBDate { set; get; }
        public string VesselNo { set; get; }
        public string VesselContractNo { set; get; }
        public string CartonNo { set; get; }
        public string TransportID { set; get; }


        public string ExpNo { set; get; }
        public string ExpDate { set; get; }
        public string EPNo { set; get; }      //Export Permit Number
        public string BLNo { set; get; }
        public string BLDate { set; get; }
        public string ExFactoryDate { set; get; }
        public string CurrentDate { set; get; }

        public string UserName { set; get; }
    }
}
