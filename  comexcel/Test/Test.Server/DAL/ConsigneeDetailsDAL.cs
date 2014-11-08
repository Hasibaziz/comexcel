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
    public partial class ConsigneeDetailsDAL
    {
        public DataTable GetAllConsigneeDetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [ConsigneeNo], [ConsigneeName], [Country] FROM [Commercial].[dbo].[ConsigneeDetails] ORDER BY ConsigneeNo ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveConsigneeDetailsInfo(ConsigneeEntity CONEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[ConsigneeDetails] ( ConsigneeNo, ConsigneeName, Country ) VALUES ( @ConsigneeNo,  @ConsigneeName, @Country )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ConsigneeNo", DbType.String, CONEntity.ConsigneeNo);
            db.AddInParameter(dbCommand, "ConsigneeName", DbType.String, CONEntity.ConsigneeName);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateConsigneeDetailsInfo(ConsigneeEntity CONEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[ConsigneeDetails] SET ConsigneeName= @ConsigneeName, Country=@Country WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, CONEntity.ID);
            //db.AddInParameter(dbCommand, "ExporterNo", DbType.String, EXEntity.ExporterNo);
            db.AddInParameter(dbCommand, "ConsigneeName", DbType.String, CONEntity.ConsigneeName);
            db.AddInParameter(dbCommand, "Country", DbType.String, CONEntity.Country);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetAllConsigneeInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, ConsigneeNo FROM ConsigneeDetails ORDER BY ConsigneeNo ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetConsigneeName(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            ConsigneeEntity obj = (ConsigneeEntity)param;
            string sql = "SELECT ID, ConsigneeName FROM ConsigneeDetails where ID='" + obj.ID + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool DeleteConsigneedeatilsById(object param, Database db, DbTransaction transaction)
        {
            string sql = "DELETE FROM [ConsigneeDetails] WHERE ID=@Id";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "Id", DbType.String, param);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
    }
}
