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
            string sql = "SELECT ID, ExporterDetailsID, TTNumber, TTAmount, TTDate, BankName FROM TTInformation";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveTTRecordInfo(TTRecordEntity ttEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO TTInformation ( ExporterDetailsID, TTNumber, TTAmount, TTDate, BankName ) VALUES ( @ExporterDetailsID, @TTNumber, @TTAmount, @TTDate, @BankName )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ExporterDetailsID", DbType.String, ttEntity.ExporterDetailsID);
            db.AddInParameter(dbCommand, "TTNumber", DbType.String, ttEntity.TTNumber);
            db.AddInParameter(dbCommand, "TTAmount", DbType.String, ttEntity.TTAmount);
            db.AddInParameter(dbCommand, "TTDate", DbType.String, ttEntity.TTDate);
            db.AddInParameter(dbCommand, "BankName", DbType.String, ttEntity.BankName);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateTTRecordInfo(TTRecordEntity ttEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[TTInformation] SET ExporterDetailsID= @ExporterDetailsID, TTNumber=@TTNumber, TTAmount=@TTAmount, TTDate=@TTDate, BankName=@BankName  WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, ttEntity.ID);
            //db.AddInParameter(dbCommand, "ExporterNo", DbType.String, EXEntity.ExporterNo);
            db.AddInParameter(dbCommand, "ExporterDetailsID", DbType.String, ttEntity.ExporterDetailsID);
            db.AddInParameter(dbCommand, "TTNumber", DbType.String, ttEntity.TTNumber);
            db.AddInParameter(dbCommand, "TTAmount", DbType.String, ttEntity.TTAmount);
            db.AddInParameter(dbCommand, "TTDate", DbType.String, ttEntity.TTDate);
            db.AddInParameter(dbCommand, "BankName", DbType.String, ttEntity.BankName);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetTTRecordBalance(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            TTRecordEntity obj = (TTRecordEntity)param;
            string sql = "SELECT ID, ExporterDetailsID, TTNumber, TTAmount, TTDate, ";
            sql = sql + " (COALESCE(CAST(TTAmount AS FLOAT),0) - COALESCE((SELECT COALESCE(SUM(CONVERT(FLOAT,CMValue)),0) FROM [ExportformDetails] WHERE TTNo='" + obj.TTNumber + "' GROUP BY TTNo),0)) AS TTBalance ";
            sql = sql + " FROM TTInformation WHERE TTNumber='" + obj.TTNumber + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetTTBalance(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            TTRecordEntity obj = (TTRecordEntity)param;
            string sql = "SELECT ID, TTNumber, TTAmount, ";
            sql = sql + " (COALESCE(CAST(TTAmount AS FLOAT),0) - COALESCE((SELECT COALESCE(SUM(CONVERT(FLOAT,CMValue)),0) FROM [ExportformDetails] WHERE TTNo='" + obj.TTNumber + "' GROUP BY TTNo),0)) AS TTBalance ";
            sql=sql+" FROM TTInformation WHERE TTNumber='" + obj.TTNumber + "'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
