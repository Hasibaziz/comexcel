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
    public partial class UDInformationBLL
    {
        public object GetAllUDmasterRecord(object param)
        {
            object retObj = null;
            UDInformationDAL udinfoDAL = new UDInformationDAL();
            retObj = (object)udinfoDAL.GetAllUDmasterRecord(param);
            return retObj;
        }
        public object SaveUDInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    UDEntity udinfoEntity = (UDEntity)param;
                    UDInformationDAL udinfoDAL = new UDInformationDAL();
                    retObj = (object)udinfoDAL.SaveUDInfo(udinfoEntity, db, transaction);
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
