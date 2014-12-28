using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using Test.Domain.Model;
using Microsoft.Practices.EnterpriseLibrary.Data;


namespace Test.Server.DAL
{
    public partial class AllReportInfoDAL
    {
        public DataTable GetAllSalesreportRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //string sql = "SELECT ID, UDNo, AMDNo, (LEFT(AMDDate, 2)+ SUBSTRING(AMDDate, 3,4)+ RIGHT(AMDDate,4)) AS AMDDate, Location, Invoice, Category, Item, QTY, Unit, CONVERT(decimal(10,2), [TotalValue]) AS TotalValue, BENo, (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate, Passbook, Pageno, BLNo, Mode FROM Importinfo ORDER BY Invoice ASC";
            string sql = "SELECT EXF.ID, UPPER(EXF.InvoiceNo) AS InvoiceNo, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6), EXF.ItemName, EXF.ContractNo, EXF.ContractDate, EXF.ExporterID, EXF.TransportID, EXF.DestinationID, EXF.Quantity,  EXF.Incoterm, EXF.FOBValue, EXF.CMValue, EXF.Freight, EXF.ConsigneeID, ";
            sql = sql + " SI.EPNo, SI.EPDate, SI.EXPNo, SI.EXPDate, SI.ExFactoryDate, SI.CnFAgent, SI.TransportID AS RTransport, SI.SBNo, SI.SBDate, SI.VesselNo, SI.CargorptDate, ";
            sql = sql + " SD.OrderNo, SD.StyleNo, SD.ProductType, SD.ShipbordingDate, SD.BLNo, SD.BLDate, SD.ETADate, SD.RevQty, SD.RevisedFOBValue, SD.RevisedCMValue, SD.CartonQty, SD.CBMValue, SD.VesselName, ";
            sql = sql + " ExporterDetails.ExporterNo, ExporterDetails.ExporterName, ExporterDetails.RegDetails, ";
            sql = sql + " DestCountry.CountryCode, DestCountry.Name, ";
            sql = sql + " Transport.Name AS TName, Transport.Port AS TPort, ";
            sql = sql + " ConsigneeDetails.ConsigneeNo, ConsigneeDetails.ConsigneeName";
            sql = sql + " FROM    ExportformDetails AS EXF INNER JOIN ";
            sql = sql + " SalesinfoDetails AS SD ON EXF.InvoiceNo = SD.InvoiceNo INNER JOIN ";
            sql = sql + " ShippingInfo AS SI ON EXF.InvoiceNo = SI.InvoiceNo INNER JOIN ";
            sql = sql + " ExporterDetails ON EXF.ExporterID = ExporterDetails.ID INNER JOIN ";
            sql = sql + " Transport ON EXF.TransportID = Transport.ID INNER JOIN";
            sql = sql + " DestCountry ON EXF.DestinationID = DestCountry.ID INNER JOIN ";
            sql = sql + " ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID   ORDER BY EXF.InvoiceNo ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
