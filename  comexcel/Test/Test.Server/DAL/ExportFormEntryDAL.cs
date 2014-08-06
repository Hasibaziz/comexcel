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
            //string sql = "SELECT A.[ID], A.[ContractNo], A.[InvoiceNo], A.[InvoiceDate], A.[ExporterID], B.[ExporterName], A.[ConsigneeID], A.[NotifyID], A.[HSCodeID], A.[FOBValue], A.[CMValue] FROM [Commercial].[dbo].[ExportformDetails] AS A, [Commercial].[dbo].[ExporterDetails] AS B WHERE A.[ExporterID]=B.[ID]";
            string sql = "SELECT A.ID, A.ContractNo, A.InvoiceNo, A.InvoiceDate, ";
            sql = sql + " A.ExporterID, EX.ExporterName, EX.RegDetails,  ";
            sql = sql + " A.ConsigneeID, CON.ConsigneeName, ";
            sql = sql + " A.NotifyID, NOTI.NotifyName, ";
            sql = sql + " A.HSCodeID, HS.HSCode, HS.HSCodeName,HS.ShortName, ";
            sql = sql + " A.DestinationID,DC.CountryCode, DC.Name, DC.Port, ";
            sql = sql + " A.FOBValue, A.CMValue, ";
            sql = sql + " A.TransportID, TR.Name, TR.Port ";
            sql = sql + " FROM ExportformDetails AS A";
            sql = sql + " LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID";
            sql = sql + " LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID";
            sql = sql + " LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID";
            sql = sql + " LEFT JOIN HSCodeDetails AS HS ON HS.ID=A.HSCodeID";
            sql = sql + " LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID";
            sql = sql + " LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveExportFormEntryRecord(ExportformEntity exfEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[ExportformDetails] ( ContractNo, InvoiceNo, InvoiceDate, ExporterID, ConsigneeID, NotifyID, HSCodeID, DestinationID, FOBValue, CMValue ) VALUES ( @ContractNo, @InvoiceNo, @InvoiceDate, @ExporterID, @ConsigneeID, @NotifyID, @HSCodeID, @DestinationID, @FOBValue, @CMValue )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ContractNo", DbType.String, exfEntity.ContractNo);
            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, exfEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "InvoiceDate", DbType.String, exfEntity.InvoiceDate);
            db.AddInParameter(dbCommand, "ExporterID", DbType.String, exfEntity.ExporterID);
            db.AddInParameter(dbCommand, "ConsigneeID", DbType.String, exfEntity.ConsigneeID);
            db.AddInParameter(dbCommand, "NotifyID", DbType.String, exfEntity.NotifyID);
            db.AddInParameter(dbCommand, "HSCodeID", DbType.String, exfEntity.HSCodeID);
            db.AddInParameter(dbCommand, "DestinationID", DbType.String, exfEntity.DestinationID);
            db.AddInParameter(dbCommand, "FOBValue", DbType.String, exfEntity.FOBValue);
            db.AddInParameter(dbCommand, "CMValue", DbType.String, exfEntity.CMValue);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateExportFormEntryRecord(ExportformEntity exfEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[ExportformDetails] SET ExporterID=@ExporterID, ConsigneeID=@ConsigneeID, NotifyID=@NotifyID, HSCodeID=@HSCodeID, DestinationID=@DestinationID, FOBValue=@FOBValue, CMValue=@CMValue WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, exfEntity.ID);
            db.AddInParameter(dbCommand, "ContractNo", DbType.String, exfEntity.ContractNo);
            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, exfEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "InvoiceDate", DbType.String, exfEntity.InvoiceDate);
            db.AddInParameter(dbCommand, "ExporterID", DbType.String, exfEntity.ExporterID);
            db.AddInParameter(dbCommand, "ConsigneeID", DbType.String, exfEntity.ConsigneeID);
            db.AddInParameter(dbCommand, "NotifyID", DbType.String, exfEntity.NotifyID);
            db.AddInParameter(dbCommand, "HSCodeID", DbType.String, exfEntity.HSCodeID);
            db.AddInParameter(dbCommand, "DestinationID", DbType.String, exfEntity.DestinationID);
            db.AddInParameter(dbCommand, "FOBValue", DbType.String, exfEntity.FOBValue);
            db.AddInParameter(dbCommand, "CMValue", DbType.String, exfEntity.CMValue);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetExporterFormUpdateByInvoiceNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //ExportformEntity obj = (ExportformEntity)param;

            //string sql = "SELECT A.[ID], A.[ContractNo], A.[InvoiceNo], A.[InvoiceDate], A.[ExporterID], B.[ExporterName], A.[ConsigneeID], A.[NotifyID], A.[HSCodeID], A.[FOBValue], A.[CMValue] FROM [Commercial].[dbo].[ExportformDetails] AS A, [Commercial].[dbo].[ExporterDetails] AS B WHERE A.[ExporterID]=B.[ID]";
            string sql = "SELECT A.ID, A.ContractNo, A.InvoiceNo, A.InvoiceDate, ";
            sql = sql + " A.ExporterID, EX.ExporterName, EX.RegDetails,  ";
            sql = sql + " A.ConsigneeID, CON.ConsigneeName, ";
            sql = sql + " A.NotifyID, NOTI.NotifyName, ";
            sql = sql + " A.HSCodeID, HS.HSCode, HS.HSCodeName,HS.ShortName, ";
            sql = sql + " A.DestinationID,DC.CountryCode, DC.Name, DC.Port, ";
            sql = sql + " A.FOBValue, A.CMValue, ";
            sql = sql + " A.TransportID, TR.Name, TR.Port ";
            sql = sql + " FROM ExportformDetails AS A";
            sql = sql + " LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID";
            sql = sql + " LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID";
            sql = sql + " LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID";
            sql = sql + " LEFT JOIN HSCodeDetails AS HS ON HS.ID=A.HSCodeID";
            sql = sql + " LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID";
            sql = sql + " LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID";
            sql = sql + " WHERE A.ID=@id";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "id", DbType.String, param.ToString());
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
