using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Test.Domain.Model;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using Test.Server.DAL;


namespace Test.Server.BLL
{
    public partial class LogisticsInfoRecordBLL
    {
       public object GetLogisticsInfoRecord(object param)
       {
           object retObj = null;
           LogisticsInfoRecordDAL lgsDAL = new LogisticsInfoRecordDAL();
           retObj = (object)lgsDAL.GetLogisticsInfoRecord(param);
           return retObj;
       }
       public object SaveLogisticsEntryInfo(object param)
       {
           Database db = DatabaseFactory.CreateDatabase();
           object retObj = null;
           using (DbConnection connection = db.CreateConnection())
           {
               connection.Open();
               DbTransaction transaction = connection.BeginTransaction();
               try
               {
                   LogisticsInfoEntity lgsEntity = (LogisticsInfoEntity)param;
                   LogisticsInfoRecordDAL lgsDAL = new LogisticsInfoRecordDAL();
                   retObj = (object)lgsDAL.SaveLogisticsEntryInfo(lgsEntity, db, transaction);
                   transaction.Commit();
               }
               catch
               {
                   transaction.Rollback();
                   throw;
               }
               finally
               {
                   connection.Close();
               }
           }
           return retObj;
       }
       public object UpdateLogisticsEntryInfo(object param)
       {
           Database db = DatabaseFactory.CreateDatabase();
           object retObj = null;
           using (DbConnection connection = db.CreateConnection())
           {
               connection.Open();
               DbTransaction transaction = connection.BeginTransaction();
               try
               {
                   LogisticsInfoEntity lgsEntity = (LogisticsInfoEntity)param;
                   LogisticsInfoRecordDAL lgsDAL = new LogisticsInfoRecordDAL();
                   retObj = (object)lgsDAL.UpdateLogisticsEntryInfo(lgsEntity, db, transaction);
                   transaction.Commit();
               }
               catch
               {
                   transaction.Rollback();
                   throw;
               }
               finally
               {
                   connection.Close();
               }
           }
           return retObj;
       }
       public object GetDuplicateLogisticInvoiceNo(object param)
       {
           object retObj = null;
           string Dupinv = param.ToString();
           LogisticsInfoRecordDAL lgsDAL = new LogisticsInfoRecordDAL();
           retObj = (object)lgsDAL.GetDuplicateLogisticInvoiceNo(param, Dupinv);
           return retObj;
       }
       public object GetLogisticsUpdateByInvoiceNo(object param)
       {
           object retObj = null;
           LogisticsInfoRecordDAL lgsDAL = new LogisticsInfoRecordDAL();
           retObj = (object)lgsDAL.GetLogisticsUpdateByInvoiceNo(param);
           return retObj;
       }
       public object GetLogisticsInvoiceSearchByNo(object param)
       {
           object retObj = null;
           string invno = param.ToString();
           LogisticsInfoRecordDAL lgsDAL = new LogisticsInfoRecordDAL();
           retObj = (object)lgsDAL.GetLogisticsInvoiceSearchByNo(param, invno);
           return retObj;
       }
    }
}
