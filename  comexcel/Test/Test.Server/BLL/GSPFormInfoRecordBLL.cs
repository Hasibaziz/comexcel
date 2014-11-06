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
    public partial class GSPFormInfoRecordBLL
    {
        public object GetAllGSPFormInfoRecord(object param)
        {
            object retObj = null;
            GSPFormInfoRecordDAL gspfDAL = new GSPFormInfoRecordDAL();
            retObj = (object)gspfDAL.GetAllGSPFormInfoRecord(param);
            return retObj;
        }
        public object SaveGSPFormDetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    GSPformDetailsEntity gspfEntity = (GSPformDetailsEntity)param;
                    GSPFormInfoRecordDAL gspfDAL = new GSPFormInfoRecordDAL();
                    retObj = (object)gspfDAL.SaveGSPFormDetailsRecord(gspfEntity, db, transaction);
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
        public object UpdateGSPFormDetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    GSPformDetailsEntity gspfEntity = (GSPformDetailsEntity)param;
                    GSPFormInfoRecordDAL gspfDAL = new GSPFormInfoRecordDAL();
                    retObj = (object)gspfDAL.UpdateGSPFormDetailsRecord(gspfEntity, db, transaction);
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
