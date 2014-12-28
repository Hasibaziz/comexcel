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
    public partial class ShippingInfoBLL
    {
        public object GetShippingInfoRecord(object param)
        {
            object retObj = null;
            ShippingInfoDAL sppDAL = new ShippingInfoDAL();
            retObj = (object)sppDAL.GetShippingInfoRecord(param);
            return retObj;
        }
        public object SaveShippingformEntry(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ShippinginfoEntity sppEntity = (ShippinginfoEntity)param;
                    ShippingInfoDAL sppDAL = new ShippingInfoDAL();
                    retObj = (object)sppDAL.SaveShippingformEntry(sppEntity, db, transaction);
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
        public object UpdateShippingformEntry(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ShippinginfoEntity sppEntity = (ShippinginfoEntity)param;
                    ShippingInfoDAL sppDAL = new ShippingInfoDAL();
                    retObj = (object)sppDAL.UpdateShippingformEntry(sppEntity, db, transaction);
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
        public object GetDuplicateshipInvoiceNo(object param)
        {
            object retObj = null;
            string Dupinv = param.ToString();
            ShippingInfoDAL sppDAL = new ShippingInfoDAL();
            retObj = (object)sppDAL.GetDuplicateshipInvoiceNo(param, Dupinv);
            return retObj;
        }

        public object GetShippingInvoiceSearchByNo(object param)
        {
            object retObj = null;
            ShippingInfoDAL sppDAL = new ShippingInfoDAL();
            retObj = (object)sppDAL.GetShippingInvoiceSearchByNo(param);
            return retObj;
        }

        public object GetShippingformEntryUpdByInvoiceNo(object param)
        {
            object retObj = null;
            ShippingInfoDAL sppDAL = new ShippingInfoDAL();
            retObj = (object)sppDAL.GetShippingformEntryUpdByInvoiceNo(param);
            return retObj;
        }
    }
}
