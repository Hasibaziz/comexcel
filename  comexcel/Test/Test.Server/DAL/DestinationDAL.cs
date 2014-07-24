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
    public partial class DestinationDAL
    {
        public DataTable GetAllDestinationRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [Destination], [Port] FROM [Commercial].[dbo].[DestCountry]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public bool SaveDestinationInfo(DestinationEntity destEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO DestCountry ( Destination, Port) VALUES (  @Destination, @Port )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "Destination", DbType.String, destEntity.Destination);
            db.AddInParameter(dbCommand, "Port", DbType.String, destEntity.Port);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        public bool UpdateDestinationInfo(DestinationEntity destEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE DestCountry SET Destination= @Destination, Port=@Port WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, destEntity.ID);

            db.AddInParameter(dbCommand, "Destination", DbType.String, destEntity.Destination);
            db.AddInParameter(dbCommand, "Port", DbType.String, destEntity.Port);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
    }
}
