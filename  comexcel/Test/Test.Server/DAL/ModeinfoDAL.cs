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
            string sql = "SELECT ID, Name, Port FROM Transport";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public bool SaveModeInfo(ModeinfoEntity modeEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO Transport ( Name, Port) VALUES (  @name, @Port )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "Name", DbType.String, modeEntity.Name);
            db.AddInParameter(dbCommand, "Port", DbType.String, modeEntity.Port);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetAllModeinfoDetails(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, Name, Port FROM Transport";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
