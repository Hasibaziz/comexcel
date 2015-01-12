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
    public partial class TTCMInformationDAL
    {
        public DataTable GetTTCMInformationRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, InvoiceNo, InvoiceDate, ContractNo, ContractDate, TTNo, TTDate, Quantity, FOBValue, CMValue FROM ExportformDetails ORDER BY TTNo ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetTTCMInformationByttno(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            ExportformEntity obj = (ExportformEntity)param;
            string sql = "SELECT ID, InvoiceNo, InvoiceDate, ContractNo, ContractDate, TTNo, TTDate, Quantity, FOBValue, CMValue FROM ExportformDetails WHERE TTNo='" + obj.TTNo + "' AND Status IS NULL ORDER BY TTNo ASC";

            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetCMTotalusingTTNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            ExportformEntity obj = (ExportformEntity)param;
            string sql = "SELECT TTNo, SUM(CONVERT(FLOAT,CMValue)) AS CMTotal FROM ExportformDetails WHERE TTNo='" + obj.TTNo + "' AND Status IS NULL GROUP BY TTNo";

            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetAllExportFormReportRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //string sql = "SELECT A.[ID], A.[ContractNo], A.[InvoiceNo], A.[InvoiceDate], A.[ExporterID], B.[ExporterName], A.[ConsigneeID], A.[NotifyID], A.[HSCodeID], A.[FOBValue], A.[CMValue] FROM [Commercial].[dbo].[ExportformDetails] AS A, [Commercial].[dbo].[ExporterDetails] AS B WHERE A.[ExporterID]=B.[ID]";
            string sql = "SELECT ROW_NUMBER()  OVER (ORDER BY  convert(datetime,A.CurrentDate,120)) As SlNo,  A.InvoiceNo, A.InvoiceDate, ";
            sql = sql + " A.ItemName, A.ContractNo, A.ContractDate, ";
            sql = sql + " A.TTNo, A.TTDate,  ";
            sql = sql + " EX.ExporterName, EX.RegDetails,  ";
            sql = sql + " CON.ConsigneeName, ";
            //sql = sql + " NOTI.NotifyName, ";
            //sql = sql + " A.HSCodeID, HS.HSCode, HS.HSCodeName,HS.ShortName, ";            
            //sql = sql + " A.HSCodesecond, HSs.HSCode AS HSs, ";
            sql = sql + " A.HSCode, A.HSCodesecond,  ";
            sql = sql + " DC.CountryCode, DC.Name, DC.Port, ";
            sql = sql + " TR.Name AS TName, TR.Port AS TPort, ";
            sql = sql + " CASE A.Section WHEN '2' Then 'Private' ELSE 'Public' END AS Section, ";
            sql = sql + " CASE A.Unit WHEN '55' Then 'PCS' ELSE 'SET' END AS Unit, ";
            sql = sql + " A.Quantity, ";
            sql = sql + " CASE A.Currency  WHEN '1' Then 'U.S.Dollars' ELSE 'Pound' END AS Currency,  ";
            sql = sql + " CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm ,  ";
            sql = sql + " A.FOBValue, A.CMValue, ";
            //sql = sql + " A.CPTFOBValue, ";
            sql = sql + " A.Freight, ";
            sql = sql + " A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate ";
            sql = sql + " FROM ExportformDetails AS A";
            sql = sql + " LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID";
            sql = sql + " LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID";
            sql = sql + " LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID";
            //sql = sql + " LEFT JOIN HSCodeDetails AS HS ON HS.ID=A.HSCodeID";
            //sql = sql + " LEFT JOIN HSCodeDetails AS HSs ON HSs.ID=A.HSCodesecond";
            sql = sql + " LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID";
            sql = sql + " LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID";
            //sql = sql + " WHERE  EX.ExporterNo in('HY001','BD001')";
            sql = sql + " ORDER BY convert(datetime,A.CurrentDate,120) ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetAllExportFormRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //string sql = "SELECT A.[ID], A.[ContractNo], A.[InvoiceNo], A.[InvoiceDate], A.[ExporterID], B.[ExporterName], A.[ConsigneeID], A.[NotifyID], A.[HSCodeID], A.[FOBValue], A.[CMValue] FROM [Commercial].[dbo].[ExportformDetails] AS A, [Commercial].[dbo].[ExporterDetails] AS B WHERE A.[ExporterID]=B.[ID]";
            string sql = "SELECT ROW_NUMBER()  OVER (ORDER BY  convert(datetime,A.CurrentDate,120)) As SlNo,  A.InvoiceNo, A.InvoiceDate, ";
            sql = sql + " A.ItemName, A.ContractNo, A.ContractDate, ";
            sql = sql + " A.TTNo, A.TTDate,  ";
            sql = sql + " A.ExporterID, EX.ExporterName, EX.RegDetails,  ";
            sql = sql + " A.ConsigneeID, CON.ConsigneeName, ";
            //sql = sql + " NOTI.NotifyName, ";
            //sql = sql + " A.HSCodeID, HS.HSCode, HS.HSCodeName,HS.ShortName, ";            
            //sql = sql + " A.HSCodesecond, HSs.HSCode AS HSs, ";
            sql = sql + " A.HSCode, A.HSCodesecond,  ";
            sql = sql + " DC.CountryCode, DC.Name, DC.Port, ";
            sql = sql + " TR.Name AS TName, TR.Port AS TPort, ";
            sql = sql + " CASE A.Section WHEN '2' Then 'Private' ELSE 'Public' END AS Section, ";
            sql = sql + " CASE A.Unit WHEN '55' Then 'PCS' ELSE 'SET' END AS Unit, ";
            sql = sql + " A.Quantity, ";
            sql = sql + " CASE A.Currency  WHEN '1' Then 'U.S.Dollars' ELSE 'Pound' END AS Currency,  ";
            sql = sql + " CASE A.Incoterm  WHEN '1' Then 'FOB' WHEN '2' Then 'CPT' WHEN '3' Then 'CFR' WHEN '4' Then 'DDP' WHEN '5' Then 'FCA' WHEN '6' Then 'CIF' WHEN '7' Then 'DAP' END AS Incoterm ,  ";
            sql = sql + " A.FOBValue, A.CMValue, ";
            //sql = sql + " A.CPTFOBValue, ";
            sql = sql + " A.Freight, ";
            sql = sql + " A.ExpNo, A.ExpDate, A.EPNo, A.BLNo, A.BLDate, A.ExFactoryDate ";
            sql = sql + " FROM ExportformDetails AS A";
            sql = sql + " LEFT JOIN ExporterDetails AS EX ON EX.ID=A.ExporterID";
            sql = sql + " LEFT JOIN ConsigneeDetails AS CON ON CON.ID=A.ConsigneeID";
            sql = sql + " LEFT JOIN NotifyDetails AS NOTI ON NOTI.ID=A.NotifyID";
            //sql = sql + " LEFT JOIN HSCodeDetails AS HS ON HS.ID=A.HSCodeID";
            //sql = sql + " LEFT JOIN HSCodeDetails AS HSs ON HSs.ID=A.HSCodesecond";
            sql = sql + " LEFT JOIN DestCountry   AS DC ON DC.ID=A.DestinationID";
            sql = sql + " LEFT JOIN Transport   AS TR ON TR.ID=A.TransportID";
            //sql = sql + " WHERE  EX.ExporterNo in('HY001','BD001')";
            sql = sql + " ORDER BY convert(datetime,A.CurrentDate,120) ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
