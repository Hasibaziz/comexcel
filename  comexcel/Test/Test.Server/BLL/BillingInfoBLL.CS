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
    public partial class BillingInfoBLL
    {
        public object GetBillingInfoRecord(object param)
        {
            object retObj = null;
            BillingInfoDAL billDAL = new BillingInfoDAL();
            retObj = (object)billDAL.GetBillingInfoRecord(param);
            return retObj;
        }
        public object SaveBillinginfoEntry(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    BillingInfoEntity billEntity = (BillingInfoEntity)param;
                    BillingInfoDAL billDAL = new BillingInfoDAL();
                    retObj = (object)billDAL.SaveBillinginfoEntry(billEntity, db, transaction);
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
        public object UpdateBillinginfoEntry(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    BillingInfoEntity billEntity = (BillingInfoEntity)param;
                    BillingInfoDAL billDAL = new BillingInfoDAL();
                    retObj = (object)billDAL.UpdateBillinginfoEntry(billEntity, db, transaction);
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
        public object GetDuplicateBillInvoiceNo(object param)
        {
            object retObj = null;
            string Dupinv = param.ToString();
            BillingInfoDAL billDAL = new BillingInfoDAL();
            retObj = (object)billDAL.GetDuplicateBillInvoiceNo(param, Dupinv);
            return retObj;
        }
        public object GetBillingEntryUpdateByInvoiceNo(object param)
        {
            object retObj = null;
            BillingInfoDAL billDAL = new BillingInfoDAL();
            retObj = (object)billDAL.GetBillingEntryUpdateByInvoiceNo(param);
            return retObj;
        }
        public object GetBillingInvoiceSearchByNo(object param)
        {
            object retObj = null;
            BillingInfoDAL billDAL = new BillingInfoDAL();
            retObj = (object)billDAL.GetBillingInvoiceSearchByNo(param);
            return retObj;
        }
    }
}
