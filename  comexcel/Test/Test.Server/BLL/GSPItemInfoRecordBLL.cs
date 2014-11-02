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
    public partial class GSPItemInfoRecordBLL
    {
        public object GetAllGSPItemInfoRecord(object param)
        {
            object retObj = null;
            GSPItemInfoRecordDAL gspDAL = new GSPItemInfoRecordDAL();
            retObj = (object)gspDAL.GetAllGSPItemInfoRecord(param);
            return retObj;
        }
        public object SaveGSPItemInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    GSPItemInfoEntity gspEntity = (GSPItemInfoEntity)param;
                    GSPItemInfoRecordDAL gspDAL = new GSPItemInfoRecordDAL();
                    retObj = (object)gspDAL.SaveGSPItemInfoRecord(gspEntity, db, transaction);
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
        public object UpdateGSPItemInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    GSPItemInfoEntity gspEntity = (GSPItemInfoEntity)param;
                    GSPItemInfoRecordDAL gspDAL = new GSPItemInfoRecordDAL();
                    retObj = (object)gspDAL.UpdateGSPItemInfoRecord(gspEntity, db, transaction);
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
