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
    public partial class TranshipmentDetailsDAL
    {
        public DataTable GetAllTranshipmentDetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [CountryName], [Details]  FROM [Commercial].[dbo].[Transhipment] ORDER BY CountryName ASC ";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveTranshipmentDetailsRecord(TranshipmentEntity tnsDAL, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO Transhipment ( CountryName, Details ) VALUES ( @CountryName, @Details  )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "CountryName", DbType.String, tnsDAL.CountryName);
            db.AddInParameter(dbCommand, "Details", DbType.String, tnsDAL.Details);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetAllTranshipmentDetails(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [CountryName]  FROM Transhipment ORDER BY CountryName ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
