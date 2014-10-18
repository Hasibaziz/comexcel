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
    public class DestinationBLL
    {
        public object GetAllDestinationRecord(object param)
        {
            object retObj = null;
            DestinationDAL destDAL = new DestinationDAL();
            retObj = (object)destDAL.GetAllDestinationRecord(param);
            return retObj;
        }
        public object SaveDestinationInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    DestinationEntity desEntity = (DestinationEntity)param;
                    DestinationDAL destDAL = new DestinationDAL();
                    retObj = (object)destDAL.SaveDestinationInfo(desEntity, db, transaction);
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
        public object UpdateDestinationInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    DestinationEntity desEntity = (DestinationEntity)param;
                    DestinationDAL destDAL = new DestinationDAL();
                    retObj = (object)destDAL.UpdateDestinationInfo(desEntity, db, transaction);
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
        public object GetAllDestinationDetails(object param)
        {
            object retObj = null;
            DestinationDAL destDAL = new DestinationDAL();
            retObj = (object)destDAL.GetAllDestinationDetails(param);
            return retObj;
        }
        public object GetDestinationName(object param)
        {
            object retObj = null;
            DestinationDAL destDAL = new DestinationDAL();
            retObj = (object)destDAL.GetDestinationName(param);
            return retObj;
        }
    }
}
