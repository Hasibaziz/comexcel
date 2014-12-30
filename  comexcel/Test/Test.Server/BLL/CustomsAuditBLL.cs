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
    public partial class CustomsAuditBLL
    {
        public object GetCustomsAuditInfoRecord(object param)
        {
            object retObj = null;
            CustomsAuditDAL allDAL = new CustomsAuditDAL();
            retObj = (object)allDAL.GetCustomsAuditInfoRecord(param);
            return retObj;
        }
        public object GetAuditInvoiceSearchByNo(object param)
        {
            object retObj = null;
            //string invNo = param.ToString();
            CustomsAuditDAL allDAL = new CustomsAuditDAL();
            retObj = (object)allDAL.GetAuditInvoiceSearchByNo(param);
            return retObj;
        }
        public object SaveCustomsAuditDetails(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    CustomsAuditEntity audEntity = (CustomsAuditEntity)param;
                    CustomsAuditDAL allDAL = new CustomsAuditDAL();
                    retObj = (object)allDAL.SaveCustomsAuditDetails(audEntity, db, transaction);
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
        public object UpdateCustomsAuditDetails(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    CustomsAuditEntity audEntity = (CustomsAuditEntity)param;
                    CustomsAuditDAL allDAL = new CustomsAuditDAL();
                    retObj = (object)allDAL.UpdateCustomsAuditDetails(audEntity, db, transaction);
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
        public object GetDuplicateAuditInvoiceNo(object param)
        {
            object retObj = null;
            string Dupinv = param.ToString();
            CustomsAuditDAL allDAL = new CustomsAuditDAL();
            retObj = (object)allDAL.GetDuplicateAuditInvoiceNo(param, Dupinv);
            return retObj;
        }
        public object GetCustomsAuditInvoiceSearchByNo(object param)
        {
            object retObj = null;
            CustomsAuditDAL allDAL = new CustomsAuditDAL();
            retObj = (object)allDAL.GetCustomsAuditInvoiceSearchByNo(param);
            return retObj;
        }
        public object GetCustomsAuditDetailsUpdateByInvoiceNo(object param)
        {
            object retObj = null;
            CustomsAuditDAL allDAL = new CustomsAuditDAL();
            retObj = (object)allDAL.GetCustomsAuditDetailsUpdateByInvoiceNo(param);
            return retObj;
        }

        public object GetAuditSearchByInvoiceNo(object param)
        {
            object retObj = null;
            string invNo = param.ToString();
            CustomsAuditDAL allDAL = new CustomsAuditDAL();
            retObj = (object)allDAL.GetAuditSearchByInvoiceNo(param, invNo);
            return retObj;
        }

    }
}
