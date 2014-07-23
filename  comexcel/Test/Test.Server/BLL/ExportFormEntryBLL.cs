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
    public partial class ExportFormEntryBLL
    {
        public object GetAllExportFormDetailsRecord(object param)
        {
            object retObj = null;
            ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
            retObj = (object)exfDAL.GetAllExportFormDetailsRecord(param);
            return retObj;
        }
        public object SaveExportFormEntryRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ExportformEntity exfEntity = (ExportformEntity)param;
                    ExportFormEntryDAL exfDAL = new ExportFormEntryDAL();
                    retObj = (object)exfDAL.SaveExportFormEntryRecord(exfEntity, db, transaction);
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
