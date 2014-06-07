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
    public partial class ModeinfoBLL
    {
        public object GetAllModemasterRecord(object param)
        {
            object retObj = null;
            ModeinfoDAL modeDAL = new ModeinfoDAL();
            retObj = (object)modeDAL.GetAllModemasterRecord(param);
            return retObj;
        }
        public object SaveModeInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ModeinfoEntity modeEntity = (ModeinfoEntity)param;
                    ModeinfoDAL modeDAL = new ModeinfoDAL();
                    retObj = (object)modeDAL.SaveModeInfo(modeEntity, db, transaction);
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
