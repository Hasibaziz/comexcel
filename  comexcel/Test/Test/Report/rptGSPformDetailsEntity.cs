using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Test.Report
{
    public class rptGSPformDetailsEntity
    {
        public string ID { set; get; }
        public string InvoiceNo { set; get; }
        public string InvoiceDate { set; get; }

        public string ExporterNo { set; get; }
        public string ExporterName { set; get; }
        public string EPBReg { set; get; }

        public string ConsigneeNo { set; get; }
        public string ConsigneeName { set; get; }
        public string Country { set; get; }

        public string TName { set; get; }
        public string VesselNo { set; get; }
        public string VesselContractNo { set; get; }

        public string CartonNo { set; get; }
        public string ItemDetails { set; get; }
        public string OrderNo { set; get; }
        public string ContractNo { set; get; }
        public string ContractDate { set; get; }
        public string MasterContractNo { set; get; }
        public string MasterContractDate { set; get; }
        public string BuyerContractNo { set; get; }
        public string BuyerContractDate { set; get; }

        public string StyleNo { set; get; }
        public string TAGIDNo { set; get; }
        //public string BuyerStyle { set; get; }
        public string OurID { set; get; }
        public string ARTNo { set; get; }
        public string CustomerPO { set; get; }
        public string Delivery { set; get; }
        public string Category { set; get; }
        public string Origion { set; get; }
        public string Quantity { set; get; }
        public string TranshipmentID { set; get; }
        public string Itemnumber { set; get; }

        public string BKMEANo { set; get; }
        public string BINNo { set; get; }
        public string SBNo { set; get; }
        public string SBDate { set; get; }


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