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
    public partial class BillingInfoDAL
    {
        public DataTable GetBillingInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [InvoiceNo], [SBNo], [SBDate], [DocSubmitDate], [CourierNo], [CourierDate], [BuyerCourierNo], [BuyerCourierDate], [LeadTime], [BankSubmitDate], [CurrentDate], [UserName]  FROM [Commercial].[dbo].[BillingInfo]  ORDER BY convert(datetime, CurrentDate, 120) DESC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveBillinginfoEntry(BillingInfoEntity billEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO BillingInfo (  InvoiceNo, SBNo, SBDate, DocSubmitDate, CourierNo, CourierDate, BuyerCourierNo, BuyerCourierDate, LeadTime, BankSubmitDate, CurrentDate, UserName  ) VALUES ( @InvoiceNo, @SBNo, @SBDate, @DocSubmitDate, @CourierNo, @CourierDate, @BuyerCourierNo, @BuyerCourierDate, @LeadTime, @BankSubmitDate, @CurrentDate, @UserName )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, billEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "SBNo", DbType.String, billEntity.SBNo);
            db.AddInParameter(dbCommand, "SBDate", DbType.String, billEntity.SBDate);
            db.AddInParameter(dbCommand, "DocSubmitDate", DbType.String, billEntity.DocSubmitDate);
            db.AddInParameter(dbCommand, "CourierNo", DbType.String, billEntity.CourierNo);
            db.AddInParameter(dbCommand, "CourierDate", DbType.String, billEntity.CourierDate);
            db.AddInParameter(dbCommand, "BuyerCourierNo", DbType.String, billEntity.BuyerCourierNo);
            db.AddInParameter(dbCommand, "BuyerCourierDate", DbType.String, billEntity.BuyerCourierDate);
            db.AddInParameter(dbCommand, "LeadTime", DbType.String, billEntity.LeadTime);
            db.AddInParameter(dbCommand, "BankSubmitDate", DbType.String, billEntity.BankSubmitDate);           

            db.AddInParameter(dbCommand, "UserName", DbType.String, billEntity.UserName);
            db.AddInParameter(dbCommand, "CurrentDate", DbType.String, billEntity.CurrentDate);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateBillinginfoEntry(BillingInfoEntity billEntity, Database db, DbTransaction transaction)
        {
            string sql = "Update BillingInfo SET SBNo=@SBNo, SBDate=@SBDate, DocSubmitDate=@DocSubmitDate, CourierNo=@CourierNo, CourierDate=@CourierDate, BuyerCourierNo=@BuyerCourierNo, BuyerCourierDate=@BuyerCourierDate, LeadTime=@LeadTime, BankSubmitDate=@BankSubmitDate   WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, billEntity.ID);
            db.AddInParameter(dbCommand, "SBNo", DbType.String, billEntity.SBNo);
            db.AddInParameter(dbCommand, "SBDate", DbType.String, billEntity.SBDate);
            db.AddInParameter(dbCommand, "DocSubmitDate", DbType.String, billEntity.DocSubmitDate);
            db.AddInParameter(dbCommand, "CourierNo", DbType.String, billEntity.CourierNo);
            db.AddInParameter(dbCommand, "CourierDate", DbType.String, billEntity.CourierDate);
            db.AddInParameter(dbCommand, "BuyerCourierNo", DbType.String, billEntity.BuyerCourierNo);
            db.AddInParameter(dbCommand, "BuyerCourierDate", DbType.String, billEntity.BuyerCourierDate);
            db.AddInParameter(dbCommand, "LeadTime", DbType.String, billEntity.LeadTime);
            db.AddInParameter(dbCommand, "BankSubmitDate", DbType.String, billEntity.BankSubmitDate);   

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetDuplicateBillInvoiceNo(object param, string Dupinv)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, InvoiceNo FROM BillingInfo where InvoiceNo like '%" + Dupinv + "%'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetBillingEntryUpdateByInvoiceNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [InvoiceNo], [SBNo], [SBDate], [DocSubmitDate], [CourierNo], [CourierDate], [BuyerCourierNo], [BuyerCourierDate], [LeadTime], [BankSubmitDate], [CurrentDate], [UserName]  FROM [Commercial].[dbo].[BillingInfo] Where ID=@id";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "id", DbType.String, param.ToString());
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetBillingInvoiceSearchByNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            BillingInfoEntity obj = (BillingInfoEntity)param;
            string sql = "SELECT [ID], [InvoiceNo], [SBNo], [SBDate], [DocSubmitDate], [CourierNo], [CourierDate], [BuyerCourierNo], [BuyerCourierDate], [LeadTime], [BankSubmitDate], [CurrentDate], [UserName]  FROM [Commercial].[dbo].[BillingInfo] Where InvoiceNo='" + obj.InvoiceNo + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetBillingfromSalesInvoiceno(object param, string InvNo)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //BillingInfoEntity obj = (BillingInfoEntity)param;
            string sql = "SELECT ID, InvoiceNo FROM SalesinfoDetails Where InvoiceNo='" + InvNo + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public bool SaveBillingImportExcelRecord(BillingImportExcelEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object[] parametersImportinfo = new object[] { obj.InvoiceNo, obj.CourierNo, obj.CourierDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spGetBillingImportExcelRecord", parametersImportinfo);


            DataSet ds = db.ExecuteDataSet(dbCommand);
            return true;
        }
        public DataTable GETAllBillingImportExcelList(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [InvoiceNo], [CourierNo], [CourierDate]  FROM [Commercial].[dbo].[BillingExcel] ";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool GETBillingPostRecord(BillingImportExcelEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //object[] parametersImportinfo = new object[] { obj.SContract, obj.UDNo, obj.BLNo, obj.Mode, obj.ImportDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spSetBillingPostRecord");

            DataSet ds = db.ExecuteDataSet(dbCommand);
            return true;
        }

    }
}
