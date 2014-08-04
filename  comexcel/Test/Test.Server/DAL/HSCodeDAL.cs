using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using Test.Domain.Model;


namespace Test.Server.DAL
{
    public partial class HSCodeDAL
    {
        public DataTable GetAllHSCodeDetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [HSCode], [HSCodeName], [ShortName] FROM [Commercial].[dbo].[HSCodeDetails]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveHSCodeDetailsInfo(HSCodeEntity HSEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[HSCodeDetails] ( HSCode, HSCodeName, ShortName ) VALUES ( @HSCode,  @HSCodeName, @ShortName )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "HSCode", DbType.String, HSEntity.HSCode);
            db.AddInParameter(dbCommand, "HSCodeName", DbType.String, HSEntity.HSCodeName);
            db.AddInParameter(dbCommand, "ShortName", DbType.String, HSEntity.ShortName);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateHSCodeDetailsInfo(HSCodeEntity HSEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[HSCodeDetails] SET HSCodeName= @HSCodeName, ShortName=@ShortName WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, HSEntity.ID);

            db.AddInParameter(dbCommand, "HSCodeName", DbType.String, HSEntity.HSCodeName);
            db.AddInParameter(dbCommand, "ShortName", DbType.String, HSEntity.ShortName);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetAllHSCodeInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, HSCode FROM HSCodeDetails";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetHSCodeName(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            HSCodeEntity obj = (HSCodeEntity)param;
            string sql = "SELECT ID, ShortName FROM HSCodeDetails WHERE ID='" + obj.ID + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
