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
            string sql = "SELECT [ID], [HSCode], [HSCodeName], [HSCodesecond] FROM [Commercial].[dbo].[HSCodeDetails]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveHSCodeDetailsInfo(HSCodeEntity HSEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[HSCodeDetails] ( HSCode, HSCodesecond, HSCodeName ) VALUES ( @HSCode, @HSCodesecond, @HSCodeName )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "HSCode", DbType.String, HSEntity.HSCode);
            db.AddInParameter(dbCommand, "HSCodesecond", DbType.String, HSEntity.HSCodesecond);
            db.AddInParameter(dbCommand, "HSCodeName", DbType.String, HSEntity.HSCodeName);            


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateHSCodeDetailsInfo(HSCodeEntity HSEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[HSCodeDetails] SET HSCodeName= @HSCodeName, HSCodesecond=@HSCodesecond WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, HSEntity.ID);

            db.AddInParameter(dbCommand, "HSCodesecond", DbType.String, HSEntity.HSCodesecond);
            db.AddInParameter(dbCommand, "HSCodeName", DbType.String, HSEntity.HSCodeName);           

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetAllHSCodeInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, HSCode, HSCode AS HSCodesecond FROM HSCodeDetails";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetAllHSCodeInfosecond(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, HSCode AS HSs FROM HSCodeDetails";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetHSCodeName(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            HSCodeEntity obj = (HSCodeEntity)param;
            string sql = "SELECT ID, HSCodeName FROM HSCodeDetails WHERE ID='" + obj.ID + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
