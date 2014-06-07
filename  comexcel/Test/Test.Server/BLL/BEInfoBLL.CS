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
    public partial class BEInfoBLL
    {
        public object GetAllBEMasterRecord(object param)
        {
            object retObj = null;
            BEInfoDAL beinfoDAL = new BEInfoDAL();
            retObj = (object)beinfoDAL.GetAllBEMasterRecord(param);
            return retObj;
        }
        public object SaveBEInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    BEInfoEntity beinfoEntity = (BEInfoEntity)param;
                    BEInfoDAL beinfoDAL = new BEInfoDAL();
                    retObj = (object)beinfoDAL.SaveBEInfo(beinfoEntity, db, transaction);
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
