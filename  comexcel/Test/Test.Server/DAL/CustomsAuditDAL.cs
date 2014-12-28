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
    public partial class CustomsAuditDAL
    {
        public DataTable GetCustomsAuditInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [InvoiceNo], [IRegisterNo], [IBond], [TotalFabric], [AdjustReg], [AdjustRegPage], [CurrentDate], [UserName]  FROM [Commercial].[dbo].[CustomAuditDetails] ORDER BY CurrentDate DESC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetAuditInvoiceSearchByNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            SalesreportEntity obj=(SalesreportEntity)param;
            //string sql = "SELECT ID, UDNo, AMDNo, (LEFT(AMDDate, 2)+ SUBSTRING(AMDDate, 3,4)+ RIGHT(AMDDate,4)) AS AMDDate, Location, Invoice, Category, Item, QTY, Unit, CONVERT(decimal(10,2), [TotalValue]) AS TotalValue, BENo, (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate, Passbook, Pageno, BLNo, Mode FROM Importinfo ORDER BY Invoice ASC";
            string sql = "SELECT EXF.ID, UPPER(EXF.InvoiceNo) AS InvoiceNo, InvoiceDate=CONVERT(varchar, CONVERT(datetime, InvoiceDate, 105), 6), EXF.ItemName, EXF.ContractNo, EXF.ContractDate, EXF.ExporterID, EXF.TransportID, EXF.DestinationID, EXF.Quantity,  EXF.Incoterm, EXF.FOBValue, EXF.CMValue, EXF.Freight, EXF.ConsigneeID, ";
            sql = sql + " SI.EPNo, EPDate=CONVERT(varchar, CONVERT(datetime, SI.EPDate, 105), 6), SI.EXPNo, EXPDate=CONVERT(varchar, CONVERT(datetime, SI.EXPDate, 105), 6), ExFactoryDate=CONVERT(varchar, CONVERT(datetime, SI.ExFactoryDate, 105), 6), SI.CnFAgent, SI.TransportID AS RTransport, SI.SBNo, SI.SBDate, SI.VesselNo, SI.CargorptDate, ";
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
            sql = sql + " ConsigneeDetails ON EXF.ConsigneeID = ConsigneeDetails.ID ";
            sql = sql + " WHERE EXF.InvoiceNo='" + obj.InvoiceNo+ "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveCustomsAuditDetails(CustomsAuditEntity audEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[CustomAuditDetails] ( InvoiceNo, IRegisterNo, IBond, TotalFabric, AdjustReg, AdjustRegPage, CurrentDate, UserName ) VALUES ( @InvoiceNo, @IRegisterNo, @IBond, @TotalFabric, @AdjustReg, @AdjustRegPage, @CurrentDate, @UserName )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, audEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "IRegisterNo", DbType.String, audEntity.IRegisterNo);
            db.AddInParameter(dbCommand, "IBond", DbType.String, audEntity.IBond);
            db.AddInParameter(dbCommand, "TotalFabric", DbType.String, audEntity.TotalFabric);
            db.AddInParameter(dbCommand, "AdjustReg", DbType.String, audEntity.AdjustReg);
            db.AddInParameter(dbCommand, "AdjustRegPage", DbType.String, audEntity.AdjustRegPage);
            db.AddInParameter(dbCommand, "CurrentDate", DbType.String, audEntity.CurrentDate);
            db.AddInParameter(dbCommand, "UserName", DbType.String, audEntity.UserName);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateCustomsAuditDetails(CustomsAuditEntity audEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[CustomAuditDetails] SET IRegisterNo= @IRegisterNo, IBond=@IBond, TotalFabric=@TotalFabric, AdjustReg=@AdjustReg, AdjustRegPage=@AdjustRegPage  WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, audEntity.ID);
            db.AddInParameter(dbCommand, "IRegisterNo", DbType.String, audEntity.IRegisterNo);
            db.AddInParameter(dbCommand, "IBond", DbType.String, audEntity.IBond);
            db.AddInParameter(dbCommand, "TotalFabric", DbType.String, audEntity.TotalFabric);
            db.AddInParameter(dbCommand, "AdjustReg", DbType.String, audEntity.AdjustReg);
            db.AddInParameter(dbCommand, "AdjustRegPage", DbType.String, audEntity.AdjustRegPage);
            

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        public DataTable GetDuplicateAuditInvoiceNo(object para, string Dupinv)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, InvoiceNo  FROM [Commercial].[dbo].[CustomAuditDetails] where InvoiceNo like '%" + Dupinv + "%'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetCustomsAuditInvoiceSearchByNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            CustomsAuditEntity obj = (CustomsAuditEntity)param;
            string sql = "SELECT [ID], [InvoiceNo], [IRegisterNo], [IBond], [TotalFabric], [AdjustReg], [AdjustRegPage], [CurrentDate], [UserName]  FROM [Commercial].[dbo].[CustomAuditDetails] WHERE  InvoiceNo='"+obj.InvoiceNo+"' ";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            //db.AddInParameter(dbCommand, "invoiceNo", DbType.String, param.ToString());
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
