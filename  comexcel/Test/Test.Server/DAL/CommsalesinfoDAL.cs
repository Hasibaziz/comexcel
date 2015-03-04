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
    public partial class CommsalesinfoDAL
    {
        public DataTable GetComsalsesInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //ComsalesinfoEntity obj = (ComsalesinfoEntity)param;
            //if (obj.UserName == "Admin")
            //{
            string sql = "SELECT ID, InvoiceNo, OrderNo, StyleNo, ProductType, ShipbordingDate, BLNo, BLDate, ETADate, RevQty, RevisedFOBValue, RevisedCMValue, CartonQty, CBMValue, VesselName, CurrentDate, UserName, ModifiedBy, ModifiedOn FROM SalesinfoDetails  ORDER BY convert(datetime, CurrentDate,120) DESC";
                DbCommand dbCommand = db.GetSqlStringCommand(sql);
                DataSet ds = db.ExecuteDataSet(dbCommand);
                return ds.Tables[0];
            //}
            //else
            //{
            //    string sql = "SELECT ID, InvoiceNo, OrderNo, StyleNo, ProductType, ShipbordingDate, BLNo, BLDate, ETADate, RevQty, RevisedFOBValue, RevisedCMValue, CartonQty, CBMValue, VesselName, CurrentDate, UserName FROM SalesinfoDetails where UserName='"+obj.UserName+"'";
            //    DbCommand dbCommand = db.GetSqlStringCommand(sql);
            //    DataSet ds = db.ExecuteDataSet(dbCommand);
            //    return ds.Tables[0];
            //}             
        }
        public bool SaveComsalesEntryInfo(ComsalesinfoEntity csEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO SalesinfoDetails (  InvoiceNo, OrderNo, StyleNo, ProductType, ShipbordingDate, ETADate, RevQty, RevisedFOBValue, RevisedCMValue, CartonQty, CBMValue, VesselName, BLNo, BLDate, FinalQty, FinalFOB, FinalCM, Remarks, UserName, CurrentDate  ) VALUES ( @InvoiceNo, @OrderNo, @StyleNo, @ProductType, @ShipbordingDate, @ETADate, @RevQty, @RevisedFOBValue, @RevisedCMValue, @CartonQty, @CBMValue, @VesselName, @BLNo, @BLDate, @FinalQty, @FinalFOB, @FinalCM, @Remarks, @UserName, @CurrentDate)";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, csEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "OrderNo", DbType.String, csEntity.OrderNo);
            db.AddInParameter(dbCommand, "StyleNo", DbType.String, csEntity.StyleNo);
            db.AddInParameter(dbCommand, "ProductType", DbType.String, csEntity.ProductType);
           
            db.AddInParameter(dbCommand, "ShipbordingDate", DbType.String, csEntity.ShipbordingDate);
           
            db.AddInParameter(dbCommand, "BLNo", DbType.String, csEntity.BLNo);
            db.AddInParameter(dbCommand, "BLDate", DbType.String, csEntity.BLDate);
           
            db.AddInParameter(dbCommand, "ETADate", DbType.String, csEntity.ETADate);
            db.AddInParameter(dbCommand, "RevQty", DbType.String, csEntity.RevQty);
            db.AddInParameter(dbCommand, "RevisedFOBValue", DbType.String, csEntity.RevisedFOBValue);
            db.AddInParameter(dbCommand, "RevisedCMValue", DbType.String, csEntity.RevisedCMValue);
            db.AddInParameter(dbCommand, "CartonQty", DbType.String, csEntity.CartonQty);
            db.AddInParameter(dbCommand, "CBMValue", DbType.String, csEntity.CBMValue);

            
            db.AddInParameter(dbCommand, "VesselName", DbType.String, csEntity.VesselName);
            db.AddInParameter(dbCommand, "FinalQty", DbType.String, csEntity.FinalQty);
            db.AddInParameter(dbCommand, "FinalFOB", DbType.String, csEntity.FinalFOB);
            db.AddInParameter(dbCommand, "FinalCM", DbType.String, csEntity.FinalCM);
            db.AddInParameter(dbCommand, "Remarks", DbType.String, csEntity.Remarks);

            db.AddInParameter(dbCommand, "UserName", DbType.String, csEntity.UserName);
            db.AddInParameter(dbCommand, "CurrentDate", DbType.String, csEntity.CurrentDate);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateComsalesEntryInfo(ComsalesinfoEntity csEntity, Database db, DbTransaction transaction)
        {
            string sql = "Update SalesinfoDetails SET OrderNo=@OrderNo, StyleNo=@StyleNo, ProductType=@ProductType, ShipbordingDate=@ShipbordingDate, BLNo=@BLNo, BLDate=@BLDate, ETADate=@ETADate, RevQty=@RevQty, RevisedFOBValue=@RevisedFOBValue, RevisedCMValue=@RevisedCMValue, CartonQty=@CartonQty, CBMValue=@CBMValue, VesselName=@VesselName, FinalQty=@FinalQty, FinalFOB=@FinalFOB, FinalCM=@FinalCM, Remarks=@Remarks,  ModifiedBy=@ModifiedBy, ModifiedOn=@ModifiedOn   WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, csEntity.ID);
            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, csEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "OrderNo", DbType.String, csEntity.OrderNo);
            db.AddInParameter(dbCommand, "StyleNo", DbType.String, csEntity.StyleNo);
            db.AddInParameter(dbCommand, "ProductType", DbType.String, csEntity.ProductType);

            db.AddInParameter(dbCommand, "ShipbordingDate", DbType.String, csEntity.ShipbordingDate);

            db.AddInParameter(dbCommand, "BLNo", DbType.String, csEntity.BLNo);
            db.AddInParameter(dbCommand, "BLDate", DbType.String, csEntity.BLDate);

            db.AddInParameter(dbCommand, "ETADate", DbType.String, csEntity.ETADate);
            db.AddInParameter(dbCommand, "RevQty", DbType.String, csEntity.RevQty);
            db.AddInParameter(dbCommand, "RevisedFOBValue", DbType.String, csEntity.RevisedFOBValue);
            db.AddInParameter(dbCommand, "RevisedCMValue", DbType.String, csEntity.RevisedCMValue);
            db.AddInParameter(dbCommand, "CartonQty", DbType.String, csEntity.CartonQty);
            db.AddInParameter(dbCommand, "CBMValue", DbType.String, csEntity.CBMValue);

            
            db.AddInParameter(dbCommand, "VesselName", DbType.String, csEntity.VesselName);

            db.AddInParameter(dbCommand, "FinalQty", DbType.String, csEntity.FinalQty);
            db.AddInParameter(dbCommand, "FinalFOB", DbType.String, csEntity.FinalFOB);
            db.AddInParameter(dbCommand, "FinalCM", DbType.String, csEntity.FinalCM);
            db.AddInParameter(dbCommand, "Remarks", DbType.String, csEntity.Remarks);

            db.AddInParameter(dbCommand, "ModifiedBy", DbType.String, csEntity.ModifiedBy);
            db.AddInParameter(dbCommand, "ModifiedOn", DbType.String, csEntity.ModifiedOn);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        public DataTable GetSalesUpdateByInvoiceNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, InvoiceNo, OrderNo, StyleNo, ProductType, ShipbordingDate, BLNo, BLDate, ETADate, RevQty, RevisedFOBValue, RevisedCMValue, CartonQty, CBMValue, VesselName, FinalQty, FinalFOB, FinalCM, Remarks, CurrentDate, UserName, ModifiedBy, ModifiedOn FROM SalesinfoDetails WHERE ID=@id"; 
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "id", DbType.String, param.ToString());            
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetDuplicatesalesInvoiceno(object param, string Dupinv)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, InvoiceNo FROM SalesinfoDetails where InvoiceNo like '%" + Dupinv + "%'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetCSalesInvoiceSearchByNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            ComsalesinfoEntity obj = (ComsalesinfoEntity)param;
            string sql = " SELECT     SA.ID, SA.InvoiceNo, SA.OrderNo, SA.StyleNo, SA.ProductType, SA.ShipbordingDate, SA.BLNo, SA.BLDate, SA.ETADate, SA.RevQty, SA.RevisedFOBValue,  ";
            sql = sql + "  SA.RevisedCMValue, SA.CartonQty, SA.CBMValue, SA.VesselName, SA.CurrentDate, SA.UserName, SA.ModifiedBy, SA.ModifiedOn, EX.TTNo, EX.TTDate  ";
            sql = sql + "  FROM   SalesinfoDetails AS SA INNER JOIN  ExportformDetails AS EX ON SA.InvoiceNo = EX.InvoiceNo";
            sql = sql + "  where SA.InvoiceNo like '%" + obj.InvoiceNo + "%' AND EX.Status IS NULL ";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetSalesEntryInvoiceSearchByNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            ExportformEntity obj = (ExportformEntity)param;

            //string sql = "SELECT A.[ID], A.[ContractNo], A.[InvoiceNo], A.[InvoiceDate], A.[ExporterID], B.[ExporterName], A.[ConsigneeID], A.[NotifyID], A.[HSCodeID], A.[FOBValue], A.[CMValue] FROM [Commercial].[dbo].[ExportformDetails] AS A, [Commercial].[dbo].[ExporterDetails] AS B WHERE A.[ExporterID]=B.[ID]";
            string sql = "SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate, ";
            sql = sql + " A.ItemName,  ";
            sql = sql + " A.TTNo, A.TTDate,  ";
            sql = sql + " A.ExporterID, EX.ExporterName, EX.RegDetails,  ";
            sql = sql + " A.ConsigneeID, CON.ConsigneeNo, CON.ConsigneeName, ";
            sql = sql + " A.NotifyID, NOTI.NotifyName, ";
            //sql = sql + " A.HSCodeID, A.HSCodesecond, HS.HSCode, HS.HSCodeName,HS.ShortName, ";
            //sql = sql + " A.HSCodesecond, HSs.HSCode AS HSs, ";
            sql = sql + " A.HSCode, A.HSCodesecond, ";
            sql = sql + " A.DestinationID,DC.CountryCode, DC.Name, DC.Port, ";
            sql = sql + " A.TransportID, TR.Name AS TName, TR.Port AS TPort, ";
            sql = sql + " A.Section, ";
            //sql = sql + " CASE A.Section WHEN '1' Then 'PRIVATE' ELSE 'PUBLIC' END AS Section, ";
            sql = sql + " A.Unit, ";
            //sql = sql + " CASE A.Unit WHEN '1' Then 'PCS' ELSE 'SET' END AS Unit, "; 
            sql = sql + " A.Quantity, ";
            //sql = sql + " CASE A.Currency WHEN '1' Then 'USDollers' ELSE 'USDollers' END AS Currency, ";
            sql = sql + " A.Currency, ";
            //sql = sql + " CASE A.Incoterm WHEN '1' Then 'FOB' ELSE 'Others' END AS Incoterm , ";
            sql = sql + " A.Incoterm, ";
            sql = sql + " A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight, ";
            sql = sql + " SPI.EXPNo, SPI.EXPDate, SPI.EPNo, SPI.EPDate, SPI.ExFactoryDate, SPI.TransportID, SPI.CnFAgent, SPI.CargorptDate, T.Port AS RTransport,  ";
            sql = sql + " SLD.CartonQty, SLD.CBMValue  ";
            sql = sql + " FROM ExportformDetails AS A";
            sql = sql + " LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID";
            sql = sql + " LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID";
            sql = sql + " LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID";
            //sql = sql + " LEFT JOIN HSCodeDetails AS HS ON HS.ID=A.HSCodeID";
            //sql = sql + " LEFT JOIN HSCodeDetails AS HSs ON HSs.ID=A.HSCodesecond";
            sql = sql + " LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID";
            sql = sql + " LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID";
            sql = sql + " LEFT JOIN ShippingInfo   AS SPI ON SPI.InvoiceNo=A.InvoiceNo";
            sql = sql + " LEFT JOIN SalesinfoDetails AS SLD ON SLD.InvoiceNo=A.InvoiceNo";
            sql = sql + " LEFT JOIN Transport   AS T ON T.ID=SPI.TransportID";
            sql = sql + " WHERE A.InvoiceNo LIKE '%" + obj.InvoiceNo + "%' AND A.Status is null ";

            //OR CON.ConsigneeNo like '%" + obj.ConsigneeID + "%' ";
            //OR A.ConsigneeID='" + obj.ConsigneeID + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            //db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, param.ToString());  
            //db.AddInParameter(dbCommand, "ConsigneeID", DbType.String, param.ToString()); 
            //db.AddInParameter(dbCommand, "ConsigneeID", DbType.String, obj.ConsigneeID);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];

            //object[] parameters = new object[] { obj.InvoiceNo, obj.ConsigneeID };
            //DbCommand dbCommand = db.GetStoredProcCommand("spGetInvoiceSearchByNo", parameters);
            //DataSet ds = db.ExecuteDataSet(dbCommand);
            //return ds.Tables[0];


        }

        public DataTable GetCheckshippingInvoiceNo(object param, string Dupinv)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, InvoiceNo FROM ShippingInfo where InvoiceNo like '%" + Dupinv + "%'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetSalesSearchByInvoiceNo(object param, string Inv)
        {
            Database db = DatabaseFactory.CreateDatabase();            
            string sql = "SELECT ID, InvoiceNo, EPNo, EPDate, EXPNo, EXPDate, ExFactoryDate, CnFAgent, TransportID, SBNo, SBDate, VesselNo, CargorptDate  FROM ShippingInfo ";
            sql = sql + " WHERE InvoiceNo LIKE '%" + Inv + "%' ";           
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public bool SaveSalesImportExcelRecord(SalesImportExcelEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object[] parametersImportinfo = new object[] { obj.InvoiceNo, obj.StyleNo, obj.BLNo, obj.BLDate, obj.ETADate, obj.ShipbordingDate, obj.VesselName};
            DbCommand dbCommand = db.GetStoredProcCommand("spGetSalesImportExcelRecord", parametersImportinfo);         


            DataSet ds = db.ExecuteDataSet(dbCommand);           
            return true;
        }
        public DataTable GETAllSalesImportExcelList(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, [InvoiceNo], [StyleNo], [BLNo], [BLDate], [ETADate], [ShipbordingDate], [VesselName] FROM SalesExcel";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
                    
        }
        public bool GETSalesPostRecord(SalesImportExcelEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //object[] parametersImportinfo = new object[] { obj.SContract, obj.UDNo, obj.BLNo, obj.Mode, obj.ImportDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spSetSalesPostRecord");

            DataSet ds = db.ExecuteDataSet(dbCommand);
            return true;
        }
        public DataTable GETDeleteExcelRecords(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "DELETE FROM SalesExcel ";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
              
        }
    }
}
