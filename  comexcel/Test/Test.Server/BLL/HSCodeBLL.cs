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
    public partial class HSCodeBLL
    {
        public object GetAllHSCodeDetailsRecord(object param)
        {
            object retObj = null;
            HSCodeDAL HSDAL = new HSCodeDAL();
            retObj = (object)HSDAL.GetAllHSCodeDetailsRecord(param);
            return retObj;
        }
        public object SaveHSCodeDetailsInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    HSCodeEntity HSEntity = (HSCodeEntity)param;
                    HSCodeDAL HSDAL = new HSCodeDAL();
                    retObj = (object)HSDAL.SaveHSCodeDetailsInfo(HSEntity, db, transaction);
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
        public object UpdateHSCodeDetailsInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    HSCodeEntity HSEntity = (HSCodeEntity)param;
                    HSCodeDAL HSDAL = new HSCodeDAL();
                    retObj = (object)HSDAL.UpdateHSCodeDetailsInfo(HSEntity, db, transaction);
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
        public object GetAllHSCodeInfo(object param)
        {
            object retObj = null;
            HSCodeDAL HSDAL = new HSCodeDAL();
            retObj = (object)HSDAL.GetAllHSCodeInfo(param);
            return retObj;
        }
        public object GetHSCodeName(object param)
        {
            object retObj = null;
            HSCodeDAL HSDAL = new HSCodeDAL();
            retObj = (object)HSDAL.GetHSCodeName(param);
            return retObj;
        }
    }
}
