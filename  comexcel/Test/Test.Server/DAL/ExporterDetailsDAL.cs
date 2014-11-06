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
    public partial class ExporterDetailsDAL
    {
        public DataTable GetAllExporterDetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID], [ExporterNo], [ExporterName], [RegDetails] FROM [Commercial].[dbo].[ExporterDetails]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveExporterDetailsInfo(ExporterEntity EXEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[ExporterDetails] ( ExporterNo, ExporterName, RegDetails ) VALUES ( @ExporterNo,  @ExporterName, @RegDetails )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ExporterNo", DbType.String, EXEntity.ExporterNo);
            db.AddInParameter(dbCommand, "ExporterName", DbType.String, EXEntity.ExporterName);
            db.AddInParameter(dbCommand, "RegDetails", DbType.String, EXEntity.RegDetails);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateExporterDetailsInfo(ExporterEntity EXEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[ExporterDetails] SET ExporterName= @ExporterName, RegDetails=@RegDetails WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, EXEntity.ID);
            //db.AddInParameter(dbCommand, "ExporterNo", DbType.String, EXEntity.ExporterNo);
            db.AddInParameter(dbCommand, "ExporterName", DbType.String, EXEntity.ExporterName);
            db.AddInParameter(dbCommand, "RegDetails", DbType.String, EXEntity.RegDetails);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetAllExporterInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID AS ExporterID, ExporterNo, ExporterName FROM ExporterDetails";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetExporterDetails(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            ExporterEntity obj = (ExporterEntity)param;
            string sql = "SELECT ID AS ExporterID, ExporterNo, ExporterName FROM ExporterDetails WHERE ID='"+obj.ID+"' ";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool DeleteExporterdeatilsById(object param, Database db, DbTransaction transaction)
        {
            string sql = "DELETE FROM [ExporterDetails] WHERE ID=@Id";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "Id", DbType.String, param);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        /// <summary>
        /// Export Form for Apparel Ltd.
        /// </summary>
        /// <param name="param"></param>
        /// <returns></returns>
        public DataTable GetAllExporterAppInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID AS ExporterID, ExporterNo, ExporterName FROM ExporterDetails WHERE ExporterNo='APP001'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
