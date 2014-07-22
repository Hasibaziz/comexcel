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
            string sql = "SELECT [ID], [ConsigneeNo], [ConsigneeName] FROM [Commercial].[dbo].[ConsigneeDetails]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveConsigneeDetailsInfo(ConsigneeEntity CONEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[ConsigneeDetails] ( ConsigneeNo, ConsigneeName ) VALUES ( @ConsigneeNo,  @ConsigneeName )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ConsigneeNo", DbType.String, CONEntity.ConsigneeNo);
            db.AddInParameter(dbCommand, "ConsigneeName", DbType.String, CONEntity.ConsigneeName);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateConsigneeDetailsInfo(ConsigneeEntity CONEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[ConsigneeDetails] SET ConsigneeName= @ConsigneeName WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, CONEntity.ID);
            //db.AddInParameter(dbCommand, "ExporterNo", DbType.String, EXEntity.ExporterNo);
            db.AddInParameter(dbCommand, "ConsigneeName", DbType.String, CONEntity.ConsigneeName);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
    }
}
