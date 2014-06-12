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
    public partial class ImportexcelDAL
    {
        public bool SaveImportexcelRecord(ImportexcelEntity importexcelEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO ExcelImport (  Invoice, Category, Item, QTY, Unit, TotalValue, Mode, ImportDate ) VALUES ( @Invoice, @Category,  @item, @QTY, @Unit, @TotalValue,  @Mode, @ImportDate )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            //db.AddInParameter(dbCommand, "ID", DbType.String, importexcelEntity.ID);
            db.AddInParameter(dbCommand, "Invoice", DbType.String, importexcelEntity.Invoice);
            db.AddInParameter(dbCommand, "Category", DbType.String, importexcelEntity.Category);
            db.AddInParameter(dbCommand, "Item", DbType.String, importexcelEntity.Item);
            db.AddInParameter(dbCommand, "QTY", DbType.String, importexcelEntity.QTY);
            db.AddInParameter(dbCommand, "Unit", DbType.String, importexcelEntity.Unit);
            db.AddInParameter(dbCommand, "TotalValue", DbType.String, importexcelEntity.TotalValue);
            db.AddInParameter(dbCommand, "Mode", DbType.String, importexcelEntity.Mode);
            db.AddInParameter(dbCommand, "ImportDate", DbType.String, importexcelEntity.ImportDate);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool SaveImportexcelRecordsp(ImportexcelEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object[] parametersImportinfo = new object[] { obj.SContract, obj.UDNo, obj.AMDNo, obj.AMDDate, obj.Factory, obj.Invoice, obj.Category, obj.Item, obj.QTY, obj.Unit, obj.TotalValue, obj.BENo, obj.BEDate, obj.Passbook, obj.Pageno, obj.BLNo, obj.Mode, obj.ImportDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spGetExcelinfoRecord", parametersImportinfo);

            object[] parametersInvoiceinfo = new object[] { obj.Invoice };
            DbCommand dbCommandInv = db.GetStoredProcCommand("spGetInvoiceinfoRecord", parametersInvoiceinfo);

            object[] parametersUDNo = new object[] { obj.UDNo, obj.AMDNo, obj.AMDDate };
            DbCommand dbCommandUDNo = db.GetStoredProcCommand("spGetUDinfoRecord", parametersUDNo);

            DataSet ds = db.ExecuteDataSet(dbCommand);
            DataSet dsInv = db.ExecuteDataSet(dbCommandInv);
            DataSet dsUDNo = db.ExecuteDataSet(dbCommandUDNo);          
            return true;
        }
        public DataTable GetAllImportExcelRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, SContract, UDNo, AMDNo, (LEFT(AMDDate, 2)+ SUBSTRING(AMDDate, 3,4)+ RIGHT(AMDDate,4)) AS AMDDate, Location, Invoice, Category, Item, QTY, Unit, CONVERT(decimal(10,2), [TotalValue]) AS TotalValue, BENo, (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate, Passbook, Pageno, BLNo, Mode FROM ExcelImport ORDER BY Invoice ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public bool SetPostdata(ImportexcelEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //object[] parametersImportinfo = new object[] { obj.SContract, obj.UDNo, obj.AMDNo, obj.AMDDate, obj.Factory, obj.Invoice, obj.Category, obj.Item, obj.QTY, obj.Unit, obj.TotalValue, obj.BENo, obj.BEDate, obj.Passbook, obj.Pageno, obj.BLNo, obj.Mode, obj.ImportDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spSetPostdataRecord");           

            DataSet ds = db.ExecuteDataSet(dbCommand);          
            return true;
        }

        public DataTable Duplicateheckinv(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();

            //string sql = "SELECT COUNT(Usermail) as MailCount FROM ITInventory.dbo.Login_info GROUP BY Usermail HAVING COUNT(Usermail)>=1";
            //string sql = "SELECT B.Invoice AS Invoice  FROM [Commercial][dbo].[ExcelImport] AS A,[Commercial][dbo].[Importinfo] AS B where A.Invoice like '%" + DUPINV + "%'";
            string sql = "SELECT B.Invoice AS Invoice  FROM [Commercial].[dbo].[ExcelImport] AS A,[Commercial].[dbo].[Importinfo] AS B where B.Invoice like A.Invoice";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            //db.AddInParameter(dbCommand, "Usermail", DbType.String, UserEntity.Usermail);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
