using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using Test.Domain.Model;
using Microsoft.Practices.EnterpriseLibrary.Data;


namespace Test.Server.DAL
{
    public partial class ModeinfoDAL
    {
        public DataTable GetAllModemasterRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, Name FROM Transport";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public bool SaveModeInfo(ModeinfoEntity modeEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO Transport ( Name) VALUES (  @name )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "Name", DbType.String, modeEntity.Name);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
    }
}
