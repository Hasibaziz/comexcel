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
    public partial class TTRecordBLL
    {
        public object GetTTRecord(object param)
        {
            object retObj = null;
            TTRecordDAL ttDAL = new TTRecordDAL();
            retObj = (object)ttDAL.GetTTRecord(param);
            return retObj;
        }
        public object SaveTTRecordInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    TTRecordEntity ttEntity = (TTRecordEntity)param;
                    TTRecordDAL ttDAL = new TTRecordDAL();
                    retObj = (object)ttDAL.SaveTTRecordInfo(ttEntity, db, transaction);
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

        public object GetTTRecordBalance(object param)
        {
            object retObj = null;
            TTRecordDAL ttDAL = new TTRecordDAL();
            retObj = (object)ttDAL.GetTTRecordBalance(param);
            return retObj;
        }
        public object GetTTBalance(object param)
        {
            object retObj = null;
            TTRecordDAL ttDAL = new TTRecordDAL();
            retObj = (object)ttDAL.GetTTBalance(param);
            return retObj;
        }
    }
}
