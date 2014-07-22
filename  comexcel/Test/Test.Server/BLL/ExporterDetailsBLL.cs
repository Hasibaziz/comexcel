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
    public partial class ExporterDetailsBLL
    {
        public object GetAllExporterDetailsRecord(object param)
        {
            object retObj = null;
            ExporterDetailsDAL EXDAL = new ExporterDetailsDAL();
            retObj = (object)EXDAL.GetAllExporterDetailsRecord(param);
            return retObj;
        }
        public object SaveExporterDetailsInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ExporterEntity EXEntity = (ExporterEntity)param;
                    ExporterDetailsDAL EXDAL = new ExporterDetailsDAL();
                    retObj = (object)EXDAL.SaveExporterDetailsInfo(EXEntity, db, transaction);
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
        public object UpdateExporterDetailsInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ExporterEntity EXEntity = (ExporterEntity)param;
                    ExporterDetailsDAL EXDAL = new ExporterDetailsDAL();
                    retObj = (object)EXDAL.UpdateExporterDetailsInfo(EXEntity, db, transaction);
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
