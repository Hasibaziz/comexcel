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
            string sql = "SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate, ";
            sql = sql + " A.TTNo, A.TTDate,  ";
            sql = sql + " A.ExporterID, EX.ExporterName, EX.RegDetails,  ";
            sql = sql + " A.ConsigneeID, CON.ConsigneeName, ";
            sql = sql + " A.NotifyID, NOTI.NotifyName, ";
            sql = sql + " A.HSCodeID, HS.HSCode, HS.HSCodeName,HS.ShortName, ";
            sql = sql + " A.DestinationID,DC.CountryCode, DC.Name, DC.Port, ";            
            sql = sql + " A.TransportID, TR.Name AS TName, TR.Port, ";
            sql = sql + " A.Section, ";
            sql = sql + " A.Unit, A.Quantity, A.Currency, A.Incoterm, ";
            sql = sql + " A.FOBValue, A.CMValue, ";
            sql = sql + " A.ExpNo, A.ExpDate, A.BLNo, A.BLDate, A.ExFactoryDate ";
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
            //string sql = "INSERT INTO [Commercial].[dbo].[ExportformDetails] ( ContractNo, InvoiceNo, InvoiceDate, ExporterID, ConsigneeID, NotifyID, HSCodeID, DestinationID, FOBValue, CMValue ) VALUES ( @ContractNo, @InvoiceNo, @InvoiceDate, @ExporterID, @ConsigneeID, @NotifyID, @HSCodeID, @DestinationID, @FOBValue, @CMValue )";
            string sql = "INSERT INTO [Commercial].[dbo].[ExportformDetails] ";
            sql = sql + "(  [ContractNo], [ContractDate], [TTNo], [TTDate], [InvoiceNo], [InvoiceDate] ";
            sql = sql + " , [ExporterID], [ConsigneeID],[NotifyID], [HSCodeID], [TransportID], [DestinationID], [Section]";
            sql = sql + " , [Unit], [Quantity],[Currency], [Incoterm], [FOBValue], [CMValue]";
            sql = sql + "  , [ExpNo], [ExpDate], [BLNo], [BLDate], [ExFactoryDate]";
            sql = sql + " )";
            sql = sql + "values ( ";
            sql = sql + " @ContractNo, @ContractDate, @TTNo , @TTDate, @InvoiceNo, @InvoiceDate";
            sql = sql + ", @ExporterID, @ConsigneeID, @NotifyID, @HSCodeID, @TransportID, @DestinationID, @Section";
            sql = sql + ", @Unit, @Quantity, @Currency, @Incoterm, @FOBValue, @CMValue";
            sql = sql + ", @ExpNo, @ExpDate, @BLNo, @BLDate, @ExFactoryDate ";
            sql = sql + ")";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ContractNo", DbType.String, exfEntity.ContractNo);
            db.AddInParameter(dbCommand, "ContractDate", DbType.String, exfEntity.ContractDate);
            db.AddInParameter(dbCommand, "TTNo", DbType.String, exfEntity.TTNo);
            db.AddInParameter(dbCommand, "TTDate", DbType.String, exfEntity.TTDate);
            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, exfEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "InvoiceDate", DbType.String, exfEntity.InvoiceDate);

            db.AddInParameter(dbCommand, "ExporterID", DbType.String, exfEntity.ExporterID);
            db.AddInParameter(dbCommand, "ConsigneeID", DbType.String, exfEntity.ConsigneeID);
            db.AddInParameter(dbCommand, "NotifyID", DbType.String, exfEntity.NotifyID);
            db.AddInParameter(dbCommand, "HSCodeID", DbType.String, exfEntity.HSCodeID);
            db.AddInParameter(dbCommand, "TransportID", DbType.String, exfEntity.TransportID);
            db.AddInParameter(dbCommand, "DestinationID", DbType.String, exfEntity.DestinationID);
            db.AddInParameter(dbCommand, "Section", DbType.String, exfEntity.Section);

            db.AddInParameter(dbCommand, "Unit", DbType.String, exfEntity.Unit);
            db.AddInParameter(dbCommand, "Quantity", DbType.String, exfEntity.Quantity);
            db.AddInParameter(dbCommand, "Currency", DbType.String, exfEntity.Currency);
            db.AddInParameter(dbCommand, "Incoterm", DbType.String, exfEntity.Incoterm);
            db.AddInParameter(dbCommand, "FOBValue", DbType.String, exfEntity.FOBValue);
            db.AddInParameter(dbCommand, "CMValue", DbType.String, exfEntity.CMValue);

            db.AddInParameter(dbCommand, "ExpNo", DbType.String, exfEntity.ExpNo);
            db.AddInParameter(dbCommand, "ExpDate", DbType.String, exfEntity.ExpDate);
            db.AddInParameter(dbCommand, "BLNo", DbType.String, exfEntity.BLNo);
            db.AddInParameter(dbCommand, "BLDate", DbType.String, exfEntity.BLDate);
            db.AddInParameter(dbCommand, "ExFactoryDate", DbType.String, exfEntity.ExFactoryDate);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateExportFormEntryRecord(ExportformEntity exfEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[ExportformDetails] ";
            sql = sql + " SET ContractNo=@ContractNo, TTNo=@TTNo, TTDate=@TTDate, ExporterID=@ExporterID, ConsigneeID=@ConsigneeID, NotifyID=@NotifyID, HSCodeID=@HSCodeID, TransportID=@TransportID, DestinationID=@DestinationID ";
            sql = sql + ", Volume=@Volume, Currency=@Currency, Incoterm=@Incoterm, Incoterm=@Incoterm, FOBValue=@FOBValue, CMValue=@CMValue ";
            sql = sql + ", ExpNo=@ExpNo, ExpDate=@ExpDate, BLNo=@BLNo, BLDate=@BLDate, ExFactoryDate=@ExFactoryDate WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, exfEntity.ID);
            db.AddInParameter(dbCommand, "ContractNo", DbType.String, exfEntity.ContractNo);
            db.AddInParameter(dbCommand, "ContractDate", DbType.String, exfEntity.ContractDate);
            db.AddInParameter(dbCommand, "TTNo", DbType.String, exfEntity.TTNo);
            db.AddInParameter(dbCommand, "TTDate", DbType.String, exfEntity.TTDate);
            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, exfEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "InvoiceDate", DbType.String, exfEntity.InvoiceDate);

            db.AddInParameter(dbCommand, "ExporterID", DbType.String, exfEntity.ExporterID);
            db.AddInParameter(dbCommand, "ConsigneeID", DbType.String, exfEntity.ConsigneeID);
            db.AddInParameter(dbCommand, "NotifyID", DbType.String, exfEntity.NotifyID);
            db.AddInParameter(dbCommand, "HSCodeID", DbType.String, exfEntity.HSCodeID);
            db.AddInParameter(dbCommand, "TransportID", DbType.String, exfEntity.TransportID);
            db.AddInParameter(dbCommand, "DestinationID", DbType.String, exfEntity.DestinationID);
            db.AddInParameter(dbCommand, "Section", DbType.String, exfEntity.Section);

            db.AddInParameter(dbCommand, "Unit", DbType.String, exfEntity.Unit);
            db.AddInParameter(dbCommand, "Quantity", DbType.String, exfEntity.Quantity);
            db.AddInParameter(dbCommand, "Currency", DbType.String, exfEntity.Currency);
            db.AddInParameter(dbCommand, "Incoterm", DbType.String, exfEntity.Incoterm);
            db.AddInParameter(dbCommand, "FOBValue", DbType.String, exfEntity.FOBValue);
            db.AddInParameter(dbCommand, "CMValue", DbType.String, exfEntity.CMValue);

            db.AddInParameter(dbCommand, "ExpNo", DbType.String, exfEntity.ExpNo);
            db.AddInParameter(dbCommand, "ExpDate", DbType.String, exfEntity.ExpDate);
            db.AddInParameter(dbCommand, "BLNo", DbType.String, exfEntity.BLNo);
            db.AddInParameter(dbCommand, "BLDate", DbType.String, exfEntity.BLDate);
            db.AddInParameter(dbCommand, "ExFactoryDate", DbType.String, exfEntity.ExFactoryDate);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetExporterFormUpdateByInvoiceNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //ExportformEntity obj = (ExportformEntity)param;

            //string sql = "SELECT A.[ID], A.[ContractNo], A.[InvoiceNo], A.[InvoiceDate], A.[ExporterID], B.[ExporterName], A.[ConsigneeID], A.[NotifyID], A.[HSCodeID], A.[FOBValue], A.[CMValue] FROM [Commercial].[dbo].[ExportformDetails] AS A, [Commercial].[dbo].[ExporterDetails] AS B WHERE A.[ExporterID]=B.[ID]";
            string sql = "SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate, ";
            sql = sql + " A.TTNo, A.TTDate,  ";
            sql = sql + " A.ExporterID, EX.ExporterName, EX.RegDetails,  ";
            sql = sql + " A.ConsigneeID, CON.ConsigneeName, ";
            sql = sql + " A.NotifyID, NOTI.NotifyName, ";
            sql = sql + " A.HSCodeID, HS.HSCode, HS.HSCodeName,HS.ShortName, ";
            sql = sql + " A.DestinationID,DC.CountryCode, DC.Name, DC.Port, ";
            sql = sql + " A.TransportID, TR.Name, TR.Port, ";
            sql = sql + " A.Section, ";
            //sql = sql + " CASE A.Section WHEN '1' Then 'PRIVATE' ELSE 'PUBLIC' END AS Section, ";
            sql = sql + " A.Unit, ";
            //sql = sql + " CASE A.Unit WHEN '1' Then 'PCS' ELSE 'SET' END AS Unit, "; 
            sql = sql + " A.Quantity, ";
            //sql = sql + " CASE A.Currency WHEN '1' Then 'USDollers' ELSE 'USDollers' END AS Currency, ";
            sql = sql + " A.Currency, ";
            //sql = sql + " CASE A.Incoterm WHEN '1' Then 'FOB' ELSE 'Others' END AS Incoterm , ";
            sql = sql + " A.Incoterm, ";
            sql = sql + " A.FOBValue, A.CMValue, ";
            sql = sql + " A.ExpNo, A.ExpDate, A.BLNo, A.BLDate, A.ExFactoryDate ";
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
        public DataTable GetInvoiceSearchByNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            ExportformEntity obj = (ExportformEntity)param;

            //string sql = "SELECT A.[ID], A.[ContractNo], A.[InvoiceNo], A.[InvoiceDate], A.[ExporterID], B.[ExporterName], A.[ConsigneeID], A.[NotifyID], A.[HSCodeID], A.[FOBValue], A.[CMValue] FROM [Commercial].[dbo].[ExportformDetails] AS A, [Commercial].[dbo].[ExporterDetails] AS B WHERE A.[ExporterID]=B.[ID]";
            string sql = "SELECT A.ID, A.ContractNo, A.ContractDate, A.InvoiceNo, A.InvoiceDate, ";
            sql = sql + " A.TTNo, A.TTDate,  ";
            sql = sql + " A.ExporterID, EX.ExporterName, EX.RegDetails,  ";
            sql = sql + " A.ConsigneeID, CON.ConsigneeName, ";
            sql = sql + " A.NotifyID, NOTI.NotifyName, ";
            sql = sql + " A.HSCodeID, HS.HSCode, HS.HSCodeName,HS.ShortName, ";
            sql = sql + " A.DestinationID,DC.CountryCode, DC.Name, DC.Port, ";
            sql = sql + " A.TransportID, TR.Name, TR.Port, ";
            sql = sql + " A.Section, ";
            //sql = sql + " CASE A.Section WHEN '1' Then 'PRIVATE' ELSE 'PUBLIC' END AS Section, ";
            sql = sql + " A.Unit, ";
            //sql = sql + " CASE A.Unit WHEN '1' Then 'PCS' ELSE 'SET' END AS Unit, "; 
            sql = sql + " A.Quantity, ";
            //sql = sql + " CASE A.Currency WHEN '1' Then 'USDollers' ELSE 'USDollers' END AS Currency, ";
            sql = sql + " A.Currency, ";
            //sql = sql + " CASE A.Incoterm WHEN '1' Then 'FOB' ELSE 'Others' END AS Incoterm , ";
            sql = sql + " A.Incoterm, ";
            sql = sql + " A.FOBValue, A.CMValue, ";
            sql = sql + " A.ExpNo, A.ExpDate, A.BLNo, A.BLDate, A.ExFactoryDate ";
            sql = sql + " FROM ExportformDetails AS A";
            sql = sql + " LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID";
            sql = sql + " LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID";
            sql = sql + " LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID";
            sql = sql + " LEFT JOIN HSCodeDetails AS HS ON HS.ID=A.HSCodeID";
            sql = sql + " LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID";
            sql = sql + " LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID";
            sql = sql + " WHERE A.InvoiceNo='"+obj.InvoiceNo+"'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            //db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, param.ToString());
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
