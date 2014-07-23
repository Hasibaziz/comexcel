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
    public partial class ExportFormEntryDAL
    {
        public DataTable GetAllExportFormDetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT A.[ID], A.[ContractNo], A.[InvoiceNo], A.[InvoiceDate], A.[ExporterID], B.[ExporterName], A.[ConsigneeID], A.[NotifyID], A.[HSCodeID], A.[FOBValue], A.[CMValue] FROM [Commercial].[dbo].[ExportformDetails] AS A, [Commercial].[dbo].[ExporterDetails] AS B WHERE A.[ExporterID]=B.[ID]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveExportFormEntryRecord(ExportformEntity exfEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[ExportformDetails] ( ContractNo, InvoiceNo, InvoiceDate, ExporterID, ConsigneeID, NotifyID, HSCodeID, FOBValue, CMValue ) VALUES ( @ContractNo, @InvoiceNo, @InvoiceDate, @ExporterID, @ConsigneeID, @NotifyID, @HSCodeID, @FOBValue, @CMValue )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ContractNo", DbType.String, exfEntity.ContractNo);
            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, exfEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "InvoiceDate", DbType.String, exfEntity.InvoiceDate);
            db.AddInParameter(dbCommand, "ExporterID", DbType.String, exfEntity.ExporterID);
            db.AddInParameter(dbCommand, "ConsigneeID", DbType.String, exfEntity.ConsigneeID);
            db.AddInParameter(dbCommand, "NotifyID", DbType.String, exfEntity.NotifyID);
            db.AddInParameter(dbCommand, "HSCodeID", DbType.String, exfEntity.HSCodeID);
            db.AddInParameter(dbCommand, "FOBValue", DbType.String, exfEntity.FOBValue);
            db.AddInParameter(dbCommand, "CMValue", DbType.String, exfEntity.CMValue);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
    }
}
