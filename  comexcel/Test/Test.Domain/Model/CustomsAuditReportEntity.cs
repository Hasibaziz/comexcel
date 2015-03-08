using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Test.Domain.Model
{
    public class CustomsAuditReportEntity
    {
        public string ID { set; get; }

        public string InvoiceNo { set; get; }
        public string InvoiceDate { set; get; }

        public string ItemName { set; get; }
        public string ContractNo { set; get; }
        public string ContractDate { set; get; }

        public string OrderNo { set; get; }

        public string TTNo { set; get; }
        public string TTDate { set; get; }

        public string ExporterID { set; get; }
        public string ExporterName { set; get; }
        public string RegDetails { set; get; }
        public string ConsigneeID { set; get; }
        public string ConsigneeName { set; get; }

        public string TransportID { set; get; }
        public string TName { set; get; }
        public string TPort { set; get; }
        public string DestinationID { set; get; }
        public string CountryCode { set; get; }
        public string Name { set; get; }
        public string Port { set; get; }
        public string FOBValue { set; get; }
        public string CMValue { set; get; }
        public string CPTValue { set; get; }
        public string Freight { set; get; }

        public string CMTotal { set; get; }
        public string Unit { set; get; }
        public string Quantity { set; get; }

        public string RevQty { set; get; }
        public string RevisedFOBValue { set; get; }
        public string RevisedCMValue { set; get; }

        public string Currency { set; get; }
        public string Incoterm { set; get; }

        public string EXPNo { set; get; }
        public string EXPDate { set; get; }
        public string EPNo { set; get; }
        public string EPDate { set; get; }
        public string BLNo { set; get; }
        public string BLDate { set; get; }
        public string SBNo { set; get; }
        public string SBDate { set; get; }
        public string ExFactoryDate { set; get; }
        public string RTransport { set; get; }      //Revise Transport;

        public string IRegisterNo { set; get; }
        public string IBond { set; get; }
        public string TotalFabric { set; get; }
        public string AdjustReg { set; get; }
        public string AdjustRegPage { set; get; }

        public string StartDate { set; get; }
        public string EndDate { set; get; }

        public string CurrentDate { set; get; }

        public string UserName { set; get; }
    }
}
