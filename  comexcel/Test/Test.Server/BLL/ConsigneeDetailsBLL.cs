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
    public partial class ConsigneeDetailsBLL
    {
        public object GetAllConsigneeDetailsRecord(object param)
        {
            object retObj = null;
            ConsigneeDetailsDAL CONDAL = new ConsigneeDetailsDAL();
            retObj = (object)CONDAL.GetAllConsigneeDetailsRecord(param);
            return retObj;
        }
        public object SaveConsigneeDetailsInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ConsigneeEntity CONEntity = (ConsigneeEntity)param;
                    ConsigneeDetailsDAL CONDAL = new ConsigneeDetailsDAL();
                    retObj = (object)CONDAL.SaveConsigneeDetailsInfo(CONEntity, db, transaction);
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
        public object UpdateConsigneeDetailsInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ConsigneeEntity CONEntity = (ConsigneeEntity)param;
                    ConsigneeDetailsDAL CONDAL = new ConsigneeDetailsDAL();
                    retObj = (object)CONDAL.UpdateConsigneeDetailsInfo(CONEntity, db, transaction);
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
        public object GetAllConsigneeInfo(object param)
        {
            object retObj = null;
            ConsigneeDetailsDAL CONDAL = new ConsigneeDetailsDAL();
            retObj = (object)CONDAL.GetAllConsigneeInfo(param);
            return retObj;
        }
        public object GetConsigneeName(object param)
        {
            object retObj = null;
            ConsigneeDetailsDAL CONDAL = new ConsigneeDetailsDAL();
            retObj = (object)CONDAL.GetConsigneeName(param);
            return retObj;
        }
    }
}
