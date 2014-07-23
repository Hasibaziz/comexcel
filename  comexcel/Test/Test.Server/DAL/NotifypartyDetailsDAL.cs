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
    public partial class NotifypartyDetailsDAL
    {
        public DataTable GetAllNotifypartyDetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [NotifyNo], [NotifyName] FROM [Commercial].[dbo].[NotifyDetails]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveNotifypartyDetailsInfo(NotifypartyEntity NOTEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[NotifyDetails] ( NotifyNo, NotifyName ) VALUES ( @NotifyNo,  @NotifyName )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "NotifyNo", DbType.String, NOTEntity.NotifyNo);
            db.AddInParameter(dbCommand, "NotifyName", DbType.String, NOTEntity.NotifyName);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateNotifypartyDetailsInfo(NotifypartyEntity NOTEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[NotifyDetails] SET NotifyName= @NotifyName WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, NOTEntity.ID);
            //db.AddInParameter(dbCommand, "ExporterNo", DbType.String, EXEntity.ExporterNo);
            db.AddInParameter(dbCommand, "NotifyName", DbType.String, NOTEntity.NotifyName);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetAllNotifypartyInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, NotifyNo FROM NotifyDetails";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
