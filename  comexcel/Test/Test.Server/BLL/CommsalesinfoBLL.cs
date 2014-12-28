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
    public partial class CommsalesinfoBLL
    {
        public object GetComsalsesInfoRecord(object param)
        {
            object retObj = null;
            CommsalesinfoDAL csDAL = new CommsalesinfoDAL();
            retObj = (object)csDAL.GetComsalsesInfoRecord(param);
            return retObj;
        }
        public object SaveComsalesEntryInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ComsalesinfoEntity csEntity = (ComsalesinfoEntity)param;
                    CommsalesinfoDAL csDAL = new CommsalesinfoDAL();
                    retObj = (object)csDAL.SaveComsalesEntryInfo(csEntity, db, transaction);
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
        public object UpdateComsalesEntryInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ComsalesinfoEntity csEntity = (ComsalesinfoEntity)param;
                    CommsalesinfoDAL csDAL = new CommsalesinfoDAL();
                    retObj = (object)csDAL.UpdateComsalesEntryInfo(csEntity, db, transaction);
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
        public object GetSalesUpdateByInvoiceNo(object param)
        {
            object retObj = null;
            CommsalesinfoDAL csDAL = new CommsalesinfoDAL();
            retObj = (object)csDAL.GetSalesUpdateByInvoiceNo(param);
            return retObj;
        }

        public object GetDuplicatesalesInvoiceno(object param)
        {
            object retObj = null;
            string Dupinv = param.ToString();
            CommsalesinfoDAL csDAL = new CommsalesinfoDAL();
            retObj = (object)csDAL.GetDuplicatesalesInvoiceno(param, Dupinv);
            return retObj;
        }

        public object GetCSalesInvoiceSearchByNo(object param)
        {
            object retObj = null;
            //string invno = param.ToString();
            CommsalesinfoDAL csDAL = new CommsalesinfoDAL();
            //retObj = (object)csDAL.GetCSalesInvoiceSearchByNo(param, invno);
            retObj = (object)csDAL.GetCSalesInvoiceSearchByNo(param);
            return retObj;
        }

        public object GetSalesEntryInvoiceSearchByNo(object param)
        {
            object retObj = null;            
            CommsalesinfoDAL csDAL = new CommsalesinfoDAL();
            retObj = (object)csDAL.GetSalesEntryInvoiceSearchByNo(param);
            return retObj;
        }

        public object GetCheckshippingInvoiceNo(object param)
        {
            object retObj = null;
            string Dupinv = param.ToString();
            CommsalesinfoDAL csDAL = new CommsalesinfoDAL();
            retObj = (object)csDAL.GetCheckshippingInvoiceNo(param, Dupinv);
            return retObj;
        }
    }
}
