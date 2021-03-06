﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using Test.Domain.Model;
using Microsoft.Practices.EnterpriseLibrary.Data;


namespace Test.Server.DAL
{
    public partial class GSPFormInfoRecordDAL
    {
        public DataTable GetAllGSPFormInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [InvoiceNo], [ContractNo], [ContractDate], [MasterContractNo], [MasterContractDate], [BuyerContractNo], [BuyerContractDate], [BKMEANo], [BINNo], [SBNo], [SBDate], [VesselNo], [VesselContractNo], [CartonNo], [Itemnumber]  FROM GSPformDetails";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetAllGSPFormItemInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //string sql = "SELECT [ID],[InvoiceNo],[ContractNo],[ContractDate],[MasterContractNo],[MasterContractDate],[BuyerContractNo],[BuyerContractDate],[BKMEANo],[BINNo],[SBNo],[SBDate],[VesselNo],[VesselContractNo],[CartonNo]  FROM [Commercial].[dbo].[GSPformDetails]";
            string sql = "SELECT A.InvoiceNo, EXPF.InvoiceDate, ";
            sql = sql + " EXPTR.ID, EXPTR.ExporterNo, EXPTR.ExporterName, EXPTR.EPBReg, ";
            sql = sql + " CON.ID, CON.ConsigneeNo, CON.ConsigneeName, CON.Country, CON.BCode, ";
            sql = sql + " TNS.ID, TNS.Name AS TName, ";
            sql = sql + " EXPF.BLNo, EXPF.BLDate, ";
            sql = sql + " GSPF.VesselNo, GSPF.VesselContractNo, GSPF.CartonNo, ";            
            sql = sql + " A.ItemDetails, ";
            sql = sql + " A.OrderNo, A.StyleNo, ";
            sql = sql + " A.TAGIDNo, A.OurID, A.ARTNo, A.CustomerPO, A.Delivery, ";
            sql = sql + " A.Category, ";
            sql = sql + " GSPF.MasterContractNo, GSPF.MasterContractDate, ";
            sql = sql + " EXPF.ExpNo, EXPF.ExpDate, EXPF.ContractNo, EXPF.ContractDate, ";
            sql = sql + " GSPF.BuyerContractNo,  GSPF.BuyerContractDate, GSPF.BKMEANo,  GSPF.BINNo, GSPF.SBNo, GSPF.SBDate, GSPF.SBNo, GSPF.SBDate,  GSPF.Itemnumber, ";
            sql = sql + " A.Origion, A.Quantity ";

            sql = sql + " FROM GSPItemInfo AS A";
            sql = sql + " INNER JOIN GSPformDetails       AS GSPF ON GSPF.InvoiceNo=A.InvoiceNo ";
            sql = sql + " INNER JOIN ExportformDetails AS EXPF ON EXPF.InvoiceNo=A.InvoiceNo ";
            sql = sql + " INNER JOIN ExporterDetails   AS EXPTR ON EXPTR.ID=EXPF.ExporterID ";
            sql = sql + " INNER JOIN ConsigneeDetails  AS CON ON CON.ID=EXPF.ConsigneeID ";
            sql = sql + " INNER JOIN Transport         AS TNS ON TNS.ID=EXPF.TransportID ";
            sql = sql + " INNER JOIN DestCountry       AS DES ON DES.ID=EXPF.DestinationID ";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveGSPFormDetailsRecord(GSPformDetailsEntity gspfEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[GSPformDetails] ( [InvoiceNo],[ContractNo],[ContractDate],[MasterContractNo],[MasterContractDate],[BuyerContractNo],[BuyerContractDate],[BKMEANo],[BINNo],[SBNo],[SBDate],[VesselNo],[VesselContractNo], [CartonNo], [Itemnumber] ) VALUES ( @InvoiceNo, @ContractNo, @ContractDate, @MasterContractNo, @MasterContractDate, @BuyerContractNo, @BuyerContractDate, @BKMEANo, @BINNo, @SBNo, @SBDate, @VesselNo, @VesselContractNo, @CartonNo, @Itemnumber )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, gspfEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "ContractNo", DbType.String, gspfEntity.ContractNo);
            db.AddInParameter(dbCommand, "ContractDate", DbType.String, gspfEntity.ContractDate);
            db.AddInParameter(dbCommand, "MasterContractNo", DbType.String, gspfEntity.MasterContractNo);
            db.AddInParameter(dbCommand, "MasterContractDate", DbType.String, gspfEntity.MasterContractDate);
            db.AddInParameter(dbCommand, "BuyerContractNo", DbType.String, gspfEntity.BuyerContractNo);
            db.AddInParameter(dbCommand, "BuyerContractDate", DbType.String, gspfEntity.BuyerContractDate);
            db.AddInParameter(dbCommand, "BKMEANo", DbType.String, gspfEntity.BKMEANo);
            db.AddInParameter(dbCommand, "BINNo", DbType.String, gspfEntity.BINNo);
            db.AddInParameter(dbCommand, "SBNo", DbType.String, gspfEntity.SBNo);
            db.AddInParameter(dbCommand, "SBDate", DbType.String, gspfEntity.SBDate);
            db.AddInParameter(dbCommand, "VesselNo", DbType.String, gspfEntity.VesselNo);
            db.AddInParameter(dbCommand, "VesselContractNo", DbType.String, gspfEntity.VesselContractNo);
            db.AddInParameter(dbCommand, "CartonNo", DbType.String, gspfEntity.CartonNo);
            db.AddInParameter(dbCommand, "Itemnumber", DbType.String, gspfEntity.Itemnumber);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateGSPFormDetailsRecord(GSPformDetailsEntity gspfEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[GSPformDetails] SET OrderNo= @OrderNo, ItemDetails= @ItemDetails, StyleNo= @StyleNo, TAGIDNo= @TAGIDNo, OurID= @OurID, ARTNo=@ARTNo, CustomerPO=@CustomerPO, Delivery=@Delivery, Category=@Category, Origion=@Origion, Quantity=@Quantity, Itemnumber=@Itemnumber WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, gspfEntity.ID);
            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, gspfEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "ContractNo", DbType.String, gspfEntity.ContractNo);
            db.AddInParameter(dbCommand, "ContractDate", DbType.String, gspfEntity.ContractDate);
            db.AddInParameter(dbCommand, "MasterContractNo", DbType.String, gspfEntity.MasterContractNo);
            db.AddInParameter(dbCommand, "MasterContractDate", DbType.String, gspfEntity.MasterContractDate);
            db.AddInParameter(dbCommand, "BuyerContractNo", DbType.String, gspfEntity.BuyerContractNo);
            db.AddInParameter(dbCommand, "BuyerContractDate", DbType.String, gspfEntity.BuyerContractDate);
            db.AddInParameter(dbCommand, "BKMEANo", DbType.String, gspfEntity.BKMEANo);
            db.AddInParameter(dbCommand, "BINNo", DbType.String, gspfEntity.BINNo);
            db.AddInParameter(dbCommand, "SBNo", DbType.String, gspfEntity.SBNo);
            db.AddInParameter(dbCommand, "VesselNo", DbType.String, gspfEntity.VesselNo);
            db.AddInParameter(dbCommand, "VesselContractNo", DbType.String, gspfEntity.VesselContractNo);
            db.AddInParameter(dbCommand, "CartonNo", DbType.String, gspfEntity.CartonNo);
            db.AddInParameter(dbCommand, "Itemnumber", DbType.String, gspfEntity.Itemnumber);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        public DataTable GetGSPFormSearchByInvoiceno(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            GSPformDetailsEntity obj = (GSPformDetailsEntity)param;
            //string sql = "SELECT [ID],[InvoiceNo],[ContractNo],[ContractDate],[MasterContractNo],[MasterContractDate],[BuyerContractNo],[BuyerContractDate],[BKMEANo],[BINNo],[SBNo],[SBDate],[VesselNo],[VesselContractNo],[CartonNo]  FROM [Commercial].[dbo].[GSPformDetails]";
            string sql = "SELECT A.InvoiceNo, EXPF.InvoiceDate, ";
            sql = sql + " EXPTR.ID, EXPTR.ExporterNo, EXPTR.ExporterName, EXPTR.EPBReg, ";
            sql = sql + " CON.ID, CON.ConsigneeNo, CON.ConsigneeName, CON.Country, CON.BCode, ";
            sql = sql + " TNS.ID, TNS.Name AS TName, ";
            sql = sql + " EXPF.BLNo, EXPF.BLDate, ";
            sql = sql + " GSPF.VesselNo, GSPF.VesselContractNo, GSPF.CartonNo, ";
            sql = sql + " A.ItemDetails, ";
            sql = sql + " A.OrderNo, A.StyleNo, ";
            sql = sql + " A.TAGIDNo, A.OurID, A.ARTNo, A.CustomerPO, A.Delivery, ";
            sql = sql + " A.Category, ";
            sql = sql + " GSPF.MasterContractNo, GSPF.MasterContractDate, ";
            sql = sql + " EXPF.ExpNo, EXPF.ExpDate, EXPF.ContractNo, EXPF.ContractDate, ";
            sql = sql + " GSPF.BuyerContractNo,  GSPF.BuyerContractDate, GSPF.BKMEANo,  GSPF.BINNo, GSPF.SBNo, GSPF.SBDate, GSPF.SBNo, GSPF.SBDate,  GSPF.Itemnumber, ";
            sql = sql + " A.Origion, A.Quantity ";

            sql = sql + " FROM GSPItemInfo AS A";
            sql = sql + " INNER JOIN GSPformDetails       AS GSPF ON GSPF.InvoiceNo=A.InvoiceNo ";
            sql = sql + " INNER JOIN ExportformDetails AS EXPF ON EXPF.InvoiceNo=A.InvoiceNo ";
            sql = sql + " INNER JOIN ExporterDetails   AS EXPTR ON EXPTR.ID=EXPF.ExporterID ";
            sql = sql + " INNER JOIN ConsigneeDetails  AS CON ON CON.ID=EXPF.ConsigneeID ";
            sql = sql + " INNER JOIN Transport         AS TNS ON TNS.ID=EXPF.TransportID ";
            sql = sql + " INNER JOIN DestCountry       AS DES ON DES.ID=EXPF.DestinationID ";
            //sql = sql + " WHERE A.InvoiceNo=@invoiceNo";
            sql = sql + " WHERE A.InvoiceNo='"+obj.InvoiceNo+"'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            //db.AddInParameter(dbCommand, "invoiceNo", DbType.String, param.ToString()); 
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

    }
}
