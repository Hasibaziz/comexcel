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
    public partial class ExportFormEntryBLL
    {
        public object GetAllExportFormDetailsRecord(object param)
        {
            object retObj = null;
            ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
            retObj = (object)exfDAL.GetAllExportFormDetailsRecord(param);
            return retObj;
        }
        public object SaveExportFormEntryRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ExportformEntity exfEntity = (ExportformEntity)param;
                    ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
                    retObj = (object)exfDAL.SaveExportFormEntryRecord(exfEntity, db, transaction);
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
        public object UpdateExportFormEntryRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ExportformEntity exfEntity = (ExportformEntity)param;
                    ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
                    retObj = (object)exfDAL.UpdateExportFormEntryRecord(exfEntity, db, transaction);
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
        public object GetExporterFormUpdateByInvoiceNo(object param)
        {
            object retObj = null;
            ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
            retObj = (object)exfDAL.GetExporterFormUpdateByInvoiceNo(param);
            return retObj;
        }
        public object GetExporterFormSearchByInvoiceNo(object param)
        {
            object retObj = null;           
            ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
            retObj = (object)exfDAL.GetExporterFormSearchByInvoiceNo(param);
            return retObj;
        }
        public object GetInvoiceSearchByNo(object param)
        {
            object retObj = null;
            //ExportformEntity obj = new ExportformEntity();
            ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
            retObj = (object)exfDAL.GetInvoiceSearchByNo( param);
            return retObj;
        }
        public object GetDuplicateInvoiceno(object param)
        {
            object retObj = null;
            string Dupinv = param.ToString();
            ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
            retObj = (object)exfDAL.GetDuplicateInvoiceno(param, Dupinv);
            return retObj;
        }
        public object DeleteExportFormEntryDetailsById(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
                    retObj = (object)exfDAL.DeleteExportFormEntryDetailsById(param, db, transaction);
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
    }
}
