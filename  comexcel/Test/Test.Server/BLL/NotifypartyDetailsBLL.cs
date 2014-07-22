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
    public partial class NotifypartyDetailsBLL
    {
        public object GetAllNotifypartyDetailsRecord(object param)
        {
            object retObj = null;
            NotifypartyDetailsDAL EXDAL = new NotifypartyDetailsDAL();
            retObj = (object)EXDAL.GetAllNotifypartyDetailsRecord(param);
            return retObj;
        }
        public object SaveNotifypartyDetailsInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    NotifypartyEntity NOTEntity = (NotifypartyEntity)param;
                    NotifypartyDetailsDAL NOTDAL = new NotifypartyDetailsDAL();
                    retObj = (object)NOTDAL.SaveNotifypartyDetailsInfo(NOTEntity, db, transaction);
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
        public object UpdateNotifypartyDetailsInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    NotifypartyEntity NOTEntity = (NotifypartyEntity)param;
                    NotifypartyDetailsDAL NOTDAL = new NotifypartyDetailsDAL();
                    retObj = (object)NOTDAL.UpdateNotifypartyDetailsInfo(NOTEntity, db, transaction);
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
