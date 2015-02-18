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
   public partial class LogisticsInfoRecordDAL
    {
       public DataTable GetLogisticsInfoRecord(object param)
       {
           Database db = DatabaseFactory.CreateDatabase();
           string sql = " SELECT [ID], [InvoiceNo], [ReceitableAmount], [DocProcessFee], [SSCertificateFee], [SealLockCharge], [AgencyCommission], [DocumentaionCharge], [TransportationCharge], [FactoryLoadingFee], [ForwarderWHUFee], [DemurrageDUNLoadingFee], [CFSMixedCargoLoadingFee], [CustomsMiscCharge], [CustomsRemarkCharge], [CargoHODate], [DeadlineSubmission], [BillrcvdDate], [LStatus], [ForwarderName], [TotalFees], [CurrentDate], [UserName] FROM [Commercial].[dbo].[LogisticsInfo] ORDER BY convert(datetime, CurrentDate,120) DESC";
           DbCommand dbCommand = db.GetSqlStringCommand(sql);
           DataSet ds = db.ExecuteDataSet(dbCommand);
           return ds.Tables[0];
       }
       public bool SaveLogisticsEntryInfo(LogisticsInfoEntity lgsEntity, Database db, DbTransaction transaction)
       {
           string sql = "INSERT INTO LogisticsInfo (  InvoiceNo, ReceitableAmount, DocProcessFee, SSCertificateFee, SealLockCharge, AgencyCommission, DocumentaionCharge, TransportationCharge, FactoryLoadingFee, ForwarderWHUFee, DemurrageDUNLoadingFee, CFSMixedCargoLoadingFee, CustomsMiscCharge, CustomsRemarkCharge, CargoHODate, DeadlineSubmission, BillrcvdDate, LStatus, ForwarderName, TotalFees, CurrentDate, UserName ) VALUES ( @InvoiceNo, @ReceitableAmount, @DocProcessFee, @SSCertificateFee, @SealLockCharge, @AgencyCommission, @DocumentaionCharge, @TransportationCharge, @FactoryLoadingFee, @ForwarderWHUFee, @DemurrageDUNLoadingFee, @CFSMixedCargoLoadingFee, @CustomsMiscCharge, @CustomsRemarkCharge, @CargoHODate, @DeadlineSubmission, @BillrcvdDate, @LStatus, @ForwarderName, @TotalFees, @CurrentDate, @UserName )";
           DbCommand dbCommand = db.GetSqlStringCommand(sql);

           db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, lgsEntity.InvoiceNo);
           db.AddInParameter(dbCommand, "ReceitableAmount", DbType.String, lgsEntity.ReceitableAmount);
           db.AddInParameter(dbCommand, "DocProcessFee", DbType.String, lgsEntity.DocProcessFee);
           db.AddInParameter(dbCommand, "SSCertificateFee", DbType.String, lgsEntity.SSCertificateFee);

           db.AddInParameter(dbCommand, "SealLockCharge", DbType.String, lgsEntity.SealLockCharge);

           db.AddInParameter(dbCommand, "AgencyCommission", DbType.String, lgsEntity.AgencyCommission);
           db.AddInParameter(dbCommand, "DocumentaionCharge", DbType.String, lgsEntity.DocumentaionCharge);

           db.AddInParameter(dbCommand, "TransportationCharge", DbType.String, lgsEntity.TransportationCharge);
           db.AddInParameter(dbCommand, "FactoryLoadingFee", DbType.String, lgsEntity.FactoryLoadingFee);
           db.AddInParameter(dbCommand, "ForwarderWHUFee", DbType.String, lgsEntity.ForwarderWHUFee);
           db.AddInParameter(dbCommand, "DemurrageDUNLoadingFee", DbType.String, lgsEntity.DemurrageDUNLoadingFee);
           db.AddInParameter(dbCommand, "CFSMixedCargoLoadingFee", DbType.String, lgsEntity.CFSMixedCargoLoadingFee);
           db.AddInParameter(dbCommand, "CustomsMiscCharge", DbType.String, lgsEntity.CustomsMiscCharge);

           db.AddInParameter(dbCommand, "CustomsRemarkCharge", DbType.String, lgsEntity.CustomsRemarkCharge);
           db.AddInParameter(dbCommand, "CargoHODate", DbType.String, lgsEntity.CargoHODate);

           db.AddInParameter(dbCommand, "DeadlineSubmission", DbType.String, lgsEntity.DeadlineSubmission);
           db.AddInParameter(dbCommand, "BillrcvdDate", DbType.String, lgsEntity.BillrcvdDate);
           db.AddInParameter(dbCommand, "LStatus", DbType.String, lgsEntity.LStatus);
           db.AddInParameter(dbCommand, "ForwarderName", DbType.String, lgsEntity.ForwarderName);
           db.AddInParameter(dbCommand, "TotalFees", DbType.String, lgsEntity.TotalFees);

           db.AddInParameter(dbCommand, "UserName", DbType.String, lgsEntity.UserName);
           db.AddInParameter(dbCommand, "CurrentDate", DbType.String, lgsEntity.CurrentDate);

           db.ExecuteNonQuery(dbCommand, transaction);
           return true;
       }
       public bool UpdateLogisticsEntryInfo(LogisticsInfoEntity lgsEntity, Database db, DbTransaction transaction)
       {
           string sql = "Update LogisticsInfo SET ReceitableAmount=@ReceitableAmount, DocProcessFee=@DocProcessFee, SSCertificateFee=@SSCertificateFee, SealLockCharge=@SealLockCharge, AgencyCommission=@AgencyCommission, DocumentaionCharge=@DocumentaionCharge, TransportationCharge=@TransportationCharge, FactoryLoadingFee=@FactoryLoadingFee, ForwarderWHUFee=@ForwarderWHUFee, DemurrageDUNLoadingFee=@DemurrageDUNLoadingFee, CFSMixedCargoLoadingFee=@CFSMixedCargoLoadingFee, CustomsMiscCharge=@CustomsMiscCharge, CustomsRemarkCharge=@CustomsRemarkCharge, CargoHODate=@CargoHODate, DeadlineSubmission=@DeadlineSubmission, BillrcvdDate=@BillrcvdDate, LStatus=@LStatus, ForwarderName=@ForwarderName, TotalFees=@TotalFees   WHERE ID=@ID";
           DbCommand dbCommand = db.GetSqlStringCommand(sql);

           db.AddInParameter(dbCommand, "ID", DbType.String, lgsEntity.ID);
           db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, lgsEntity.InvoiceNo);
           db.AddInParameter(dbCommand, "ReceitableAmount", DbType.String, lgsEntity.ReceitableAmount);
           db.AddInParameter(dbCommand, "DocProcessFee", DbType.String, lgsEntity.DocProcessFee);
           db.AddInParameter(dbCommand, "SSCertificateFee", DbType.String, lgsEntity.SSCertificateFee);

           db.AddInParameter(dbCommand, "SealLockCharge", DbType.String, lgsEntity.SealLockCharge);

           db.AddInParameter(dbCommand, "AgencyCommission", DbType.String, lgsEntity.AgencyCommission);
           db.AddInParameter(dbCommand, "DocumentaionCharge", DbType.String, lgsEntity.DocumentaionCharge);

           db.AddInParameter(dbCommand, "TransportationCharge", DbType.String, lgsEntity.TransportationCharge);
           db.AddInParameter(dbCommand, "FactoryLoadingFee", DbType.String, lgsEntity.FactoryLoadingFee);
           db.AddInParameter(dbCommand, "ForwarderWHUFee", DbType.String, lgsEntity.ForwarderWHUFee);
           db.AddInParameter(dbCommand, "DemurrageDUNLoadingFee", DbType.String, lgsEntity.DemurrageDUNLoadingFee);
           db.AddInParameter(dbCommand, "CFSMixedCargoLoadingFee", DbType.String, lgsEntity.CFSMixedCargoLoadingFee);
           db.AddInParameter(dbCommand, "CustomsMiscCharge", DbType.String, lgsEntity.CustomsMiscCharge);

           db.AddInParameter(dbCommand, "CustomsRemarkCharge", DbType.String, lgsEntity.CustomsRemarkCharge);
           db.AddInParameter(dbCommand, "CargoHODate", DbType.String, lgsEntity.CargoHODate);

           db.AddInParameter(dbCommand, "DeadlineSubmission", DbType.String, lgsEntity.DeadlineSubmission);
           db.AddInParameter(dbCommand, "BillrcvdDate", DbType.String, lgsEntity.BillrcvdDate);
           db.AddInParameter(dbCommand, "LStatus", DbType.String, lgsEntity.LStatus);
           db.AddInParameter(dbCommand, "ForwarderName", DbType.String, lgsEntity.ForwarderName);
           db.AddInParameter(dbCommand, "TotalFees", DbType.String, lgsEntity.TotalFees);

           db.ExecuteNonQuery(dbCommand, transaction);
           return true;
       }
       public DataTable GetDuplicateLogisticInvoiceNo(object param, string Dupinv)
       {
           Database db = DatabaseFactory.CreateDatabase();
           string sql = "SELECT ID, InvoiceNo FROM LogisticsInfo where InvoiceNo like '%" + Dupinv + "%'";
           DbCommand dbCommand = db.GetSqlStringCommand(sql);
           DataSet ds = db.ExecuteDataSet(dbCommand);
           return ds.Tables[0];
       }
       public DataTable GetLogisticsUpdateByInvoiceNo(object param)
       {
           Database db = DatabaseFactory.CreateDatabase();
           string sql = " SELECT [ID], [InvoiceNo], [ReceitableAmount], [DocProcessFee], [SSCertificateFee], [SealLockCharge], [AgencyCommission], [DocumentaionCharge], [TransportationCharge], [FactoryLoadingFee], [ForwarderWHUFee], [DemurrageDUNLoadingFee], [CFSMixedCargoLoadingFee], [CustomsMiscCharge], [CustomsRemarkCharge], [CargoHODate], [DeadlineSubmission], [BillrcvdDate], [LStatus], [ForwarderName], [TotalFees], [CurrentDate], [UserName] FROM [Commercial].[dbo].[LogisticsInfo] WHERE ID=@id";
           DbCommand dbCommand = db.GetSqlStringCommand(sql);
           db.AddInParameter(dbCommand, "id", DbType.String, param.ToString());
           DataSet ds = db.ExecuteDataSet(dbCommand);
           return ds.Tables[0];
       }
       public DataTable GetLogisticsInvoiceSearchByNo(object param, string Inv)
       {
           Database db = DatabaseFactory.CreateDatabase();
           string sql = " SELECT [ID], [InvoiceNo], [ReceitableAmount], [DocProcessFee], [SSCertificateFee], [SealLockCharge], [AgencyCommission], [DocumentaionCharge], [TransportationCharge], [FactoryLoadingFee], [ForwarderWHUFee], [DemurrageDUNLoadingFee], [CFSMixedCargoLoadingFee], [CustomsMiscCharge], [CustomsRemarkCharge], [CargoHODate], [DeadlineSubmission], [BillrcvdDate], [LStatus], [ForwarderName], [TotalFees], [CurrentDate], [UserName] FROM [Commercial].[dbo].[LogisticsInfo] ";
           sql = sql + " WHERE InvoiceNo LIKE '%" + Inv + "%' ";
           DbCommand dbCommand = db.GetSqlStringCommand(sql);

           DataSet ds = db.ExecuteDataSet(dbCommand);
           return ds.Tables[0];
       }

    }
}
