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
    public partial class TranshipmentDetailsBLL
    {
        public object GetAllTranshipmentDetailsRecord(object param)
        {
            object retObj = null;
            TranshipmentDetailsDAL tnsDAL = new TranshipmentDetailsDAL();
            retObj = (object)tnsDAL.GetAllTranshipmentDetailsRecord(param);
            return retObj;
        }
        public object SaveTranshipmentDetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    TranshipmentEntity tnsEntity = (TranshipmentEntity)param;
                    TranshipmentDetailsDAL tnsDAL = new TranshipmentDetailsDAL();
                    retObj = (object)tnsDAL.SaveTranshipmentDetailsRecord(tnsEntity, db, transaction);
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
        public object GetAllTranshipmentDetails(object param)
        {
            object retObj = null;
            TranshipmentDetailsDAL tnsDAL = new TranshipmentDetailsDAL();
            retObj = (object)tnsDAL.GetAllTranshipmentDetails(param);
            return retObj;
        }
    }
}
