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
            string sql = "SELECT [ID], [CountryCode], [Name], [Port] FROM [Commercial].[dbo].[DestCountry]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public bool SaveDestinationInfo(DestinationEntity destEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO DestCountry (CountryCode, Name, Port) VALUES ( @CountryCode,  @Name, @Port )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "CountryCode", DbType.String, destEntity.CountryCode);
            db.AddInParameter(dbCommand, "Name", DbType.String, destEntity.Name);
            db.AddInParameter(dbCommand, "Port", DbType.String, destEntity.Port);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        public bool UpdateDestinationInfo(DestinationEntity destEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE DestCountry SET Name= @Name, Port=@Port WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, destEntity.ID);

            db.AddInParameter(dbCommand, "CountryCode", DbType.String, destEntity.CountryCode);
            db.AddInParameter(dbCommand, "Name", DbType.String, destEntity.Name);
            db.AddInParameter(dbCommand, "Port", DbType.String, destEntity.Port);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        public DataTable GetAllDestinationDetails(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [CountryCode], [Name], [Port] FROM [Commercial].[dbo].[DestCountry]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetDestinationName(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            DestinationEntity obj = (DestinationEntity)param;
            string sql = "SELECT [ID], [CountryCode], [Name], [Port] FROM [Commercial].[dbo].[DestCountry] WHERE ID='" + obj.ID + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
