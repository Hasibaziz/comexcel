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

    }
}
