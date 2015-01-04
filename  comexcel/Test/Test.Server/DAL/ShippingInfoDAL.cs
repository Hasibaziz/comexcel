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
    public partial class ShippingInfoDAL
    {
        public DataTable GetShippingInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //ShippinginfoEntity obj = (ShippinginfoEntity)param;
            //if (obj.UserName == null)
            //{
                string sql = "SELECT ID, InvoiceNo, EPNo, EPDate, EXPNo, EXPDate, ExFactoryDate, CnFAgent, TransportID, SBNo, SBDate, VesselNo, CargorptDate  FROM ShippingInfo";
                DbCommand dbCommand = db.GetSqlStringCommand(sql);
                DataSet ds = db.ExecuteDataSet(dbCommand);
                return ds.Tables[0];
            //}
            //else
            //{
            //    string sql = "SELECT ID, InvoiceNo, EPNo, EPDate, EXPNo, EXPDate, ExFactoryDate, CnFAgent, TransportID, SBNo, SBDate, VesselNo, CargorptDate  FROM ShippingInfo WHERE UserName='"+obj.UserName+"' ";
            //    DbCommand dbCommand = db.GetSqlStringCommand(sql);
            //    DataSet ds = db.ExecuteDataSet(dbCommand);
            //    return ds.Tables[0];
            //}
        }
        public bool SaveShippingformEntry(ShippinginfoEntity sppEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO ShippingInfo (  InvoiceNo, EPNo, EPDate, EXPNo, EXPDate, ExFactoryDate, CnFAgent, TransportID, SBNo, SBDate, VesselNo, CargorptDate, UserName, CurrentDate  ) VALUES ( @InvoiceNo, @EPNo, @EPDate, @EXPNo, @EXPDate, @ExFactoryDate, @CnFAgent, @TransportID, @SBNo, @SBDate, @VesselNo, @CargorptDate, @UserName, @CurrentDate  )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, sppEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "EPNo", DbType.String, sppEntity.EPNo);
            db.AddInParameter(dbCommand, "EPDate", DbType.String, sppEntity.EPDate);
            db.AddInParameter(dbCommand, "EXPNo", DbType.String, sppEntity.EXPNo);
            db.AddInParameter(dbCommand, "EXPDate", DbType.String, sppEntity.EXPDate);
            db.AddInParameter(dbCommand, "ExFactoryDate", DbType.String, sppEntity.ExFactoryDate);
            db.AddInParameter(dbCommand, "CnFAgent", DbType.String, sppEntity.CnFAgent);
            db.AddInParameter(dbCommand, "TransportID", DbType.String, sppEntity.TransportID);
            db.AddInParameter(dbCommand, "SBNo", DbType.String, sppEntity.SBNo);
            db.AddInParameter(dbCommand, "SBDate", DbType.String, sppEntity.SBDate);
            db.AddInParameter(dbCommand, "VesselNo", DbType.String, sppEntity.VesselNo);
            db.AddInParameter(dbCommand, "CargorptDate", DbType.String, sppEntity.CargorptDate);
           
            db.AddInParameter(dbCommand, "UserName", DbType.String, sppEntity.UserName);
            db.AddInParameter(dbCommand, "CurrentDate", DbType.String, sppEntity.CurrentDate);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateShippingformEntry(ShippinginfoEntity sppEntity, Database db, DbTransaction transaction)
        {
            string sql = "Update ShippingInfo SET EPNo=@EPNo, EPDate=@EPDate, EXPNo=@EXPNo, EXPDate=@EXPDate, ExFactoryDate=@ExFactoryDate, CnFAgent=@CnFAgent, TransportID=@TransportID, SBNo=@SBNo, SBDate=@SBDate, VesselNo=@VesselNo, CargorptDate=@CargorptDate   WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, sppEntity.ID);
            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, sppEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "EPNo", DbType.String, sppEntity.EPNo);
            db.AddInParameter(dbCommand, "EPDate", DbType.String, sppEntity.EPDate);
            db.AddInParameter(dbCommand, "EXPNo", DbType.String, sppEntity.EXPNo);
            db.AddInParameter(dbCommand, "EXPDate", DbType.String, sppEntity.EXPDate);
            db.AddInParameter(dbCommand, "ExFactoryDate", DbType.String, sppEntity.ExFactoryDate);
            db.AddInParameter(dbCommand, "CnFAgent", DbType.String, sppEntity.CnFAgent);
            db.AddInParameter(dbCommand, "TransportID", DbType.String, sppEntity.TransportID);
            db.AddInParameter(dbCommand, "SBNo", DbType.String, sppEntity.SBNo);
            db.AddInParameter(dbCommand, "SBDate", DbType.String, sppEntity.SBDate);
            db.AddInParameter(dbCommand, "VesselNo", DbType.String, sppEntity.VesselNo);
            db.AddInParameter(dbCommand, "CargorptDate", DbType.String, sppEntity.CargorptDate);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetDuplicateshipInvoiceNo(object param, string Dupinv)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, InvoiceNo FROM ShippingInfo where InvoiceNo like '%" + Dupinv + "%'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetShippingInvoiceSearchByNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            ShippinginfoEntity obj = (ShippinginfoEntity)param;
            string sql = "SELECT ID, InvoiceNo, EPNo, EPDate, EXPNo, EXPDate, ExFactoryDate, CnFAgent, TransportID, SBNo, SBDate, VesselNo, CargorptDate  FROM ShippingInfo Where InvoiceNo='"+obj.InvoiceNo+"'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetShippingformEntryUpdByInvoiceNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();           
            string sql = "SELECT ID, InvoiceNo, EPNo, EPDate, EXPNo, EXPDate, ExFactoryDate, CnFAgent, TransportID, SBNo, SBDate, VesselNo, CargorptDate  FROM ShippingInfo Where ID=@id";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "id", DbType.String, param.ToString()); 
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetShippingMonitorInvoiceSearchByNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //string sql = "SELECT A.[ID], A.[ContractNo], A.[InvoiceNo], A.[InvoiceDate], A.[ExporterID], B.[ExporterName], A.[ConsigneeID], A.[NotifyID], A.[HSCodeID], A.[FOBValue], A.[CMValue] FROM [Commercial].[dbo].[ExportformDetails] AS A, [Commercial].[dbo].[ExporterDetails] AS B WHERE A.[ExporterID]=B.[ID]";
            string sql = "SELECT B.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate, ";
            sql = sql + " A.ItemName,  ";
            sql = sql + " A.TTNo, A.TTDate,  ";
            sql = sql + " A.ExporterID, EX.ExporterName, EX.RegDetails,  ";
            sql = sql + " A.ConsigneeID, CON.ConsigneeName, ";
            sql = sql + " A.NotifyID, NOTI.NotifyName, ";
            //sql = sql + " A.HSCodeID, HS.HSCode, HS.HSCodeName,HS.ShortName, ";            
            //sql = sql + " A.HSCodesecond, HSs.HSCode AS HSs, ";
            sql = sql + " A.HSCode, A.HSCodesecond,  ";
            sql = sql + " A.DestinationID,DC.CountryCode, DC.Name, DC.Port, ";
            sql = sql + " A.TransportID, TR.Name AS TName, TR.Port AS TPort, ";
            sql = sql + " A.Section, ";
            sql = sql + " A.Unit, A.Quantity, A.Currency, ";
            sql = sql + " CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm ,  ";
            sql = sql + " A.FOBValue, A.CMValue, A.CPTFOBValue, A.Freight, ";
            sql = sql + " B.ExpNo, B.ExpDate, B.EPNo, B.EPDate, B.ExFactoryDate ";

            sql = sql + " FROM  ExportformDetails AS A ";
            sql = sql + " LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID";
            sql = sql + " LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID";
            sql = sql + " LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID";
            //sql = sql + " LEFT JOIN HSCodeDetails AS HS ON HS.ID=A.HSCodeID";
            //sql = sql + " LEFT JOIN HSCodeDetails AS HSs ON HSs.ID=A.HSCodesecond";
            sql = sql + " LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID";
            sql = sql + " LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID";
            sql = sql + "  LEFT OUTER JOIN ShippingInfo AS B ON A.InvoiceNo=B.InvoiceNo ";
            sql = sql + " WHERE  EX.ExporterNo in('HOPYICK','HLBD', 'APPAREL') AND A.Status is null  ";
            //sql = sql + " AND A.InvoiceNo=B.InvoiceNo";
            sql = sql + " ORDER BY convert(datetime,A.CurrentDate,120) DESC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

    }
}
