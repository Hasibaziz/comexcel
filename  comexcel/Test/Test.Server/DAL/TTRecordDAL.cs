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
    public partial class TTRecordDAL
    {
        public DataTable GetTTRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, ExporterDetailsID, TTNumber, TTAmount, TTDate FROM TTInformation";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveTTRecordInfo(TTRecordEntity ttEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO TTInformation ( ExporterDetailsID, TTNumber, TTAmount, TTDate ) VALUES ( @ExporterDetailsID, @TTNumber, @TTAmount, @TTDate )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ExporterDetailsID", DbType.String, ttEntity.ExporterDetailsID);
            db.AddInParameter(dbCommand, "TTNumber", DbType.String, ttEntity.TTNumber);
            db.AddInParameter(dbCommand, "TTAmount", DbType.String, ttEntity.TTAmount);
            db.AddInParameter(dbCommand, "TTDate", DbType.String, ttEntity.TTDate);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        public DataTable GetTTRecordBalance(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            TTRecordEntity obj = (TTRecordEntity)param;
            string sql = "SELECT ID, ExporterDetailsID, TTNumber, TTAmount, TTDate, (CONVERT(FLOAT,TTAmount) - (SELECT SUM(CONVERT(FLOAT,CMValue)) FROM [ExportformDetails] WHERE TTNo='" + obj.TTNumber + "' GROUP BY TTNo)) AS TTBalance FROM TTInformation WHERE TTNumber='" + obj.TTNumber + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetTTBalance(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            TTRecordEntity obj = (TTRecordEntity)param;
            string sql = "SELECT ID, TTNumber, TTAmount, (CONVERT(FLOAT,TTAmount) - (SELECT SUM(CONVERT(FLOAT,CMValue)) FROM [ExportformDetails] WHERE TTNo='" + obj.TTNumber + "' GROUP BY TTNo)) AS TTBalance FROM TTInformation WHERE TTNumber='" + obj.TTNumber + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
