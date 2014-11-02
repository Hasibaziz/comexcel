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
    public partial class GSPItemInfoRecordDAL
    {
        public DataTable GetAllGSPItemInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID],[InvoiceNo],[OrderNo],[ItemDetails],[StyleNo],[TAGIDNo],[OurID],[ARTNo],[CustomerPO],[Delivery],[Category],[Origion],[Quantity]  FROM [Commercial].[dbo].[GSPItemInfo]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveGSPItemInfoRecord(GSPItemInfoEntity gspEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[GSPItemInfo] ( [InvoiceNo],[OrderNo],[ItemDetails],[StyleNo],[TAGIDNo],[OurID],[ARTNo],[CustomerPO],[Delivery],[Category],[Origion],[Quantity] ) VALUES (@InvoiceNo, @OrderNo, @ItemDetails, @StyleNo, @TAGIDNo, @OurID, @ARTNo, @CustomerPO, @Delivery, @Category , @Origion , @Quantity )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, gspEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "OrderNo", DbType.String, gspEntity.OrderNo);
            db.AddInParameter(dbCommand, "ItemDetails", DbType.String, gspEntity.ItemDetails);
            db.AddInParameter(dbCommand, "StyleNo", DbType.String, gspEntity.StyleNo);
            db.AddInParameter(dbCommand, "TAGIDNo", DbType.String, gspEntity.TAGIDNo);
            db.AddInParameter(dbCommand, "OurID", DbType.String, gspEntity.OurID);
            db.AddInParameter(dbCommand, "ARTNo", DbType.String, gspEntity.ARTNo);
            db.AddInParameter(dbCommand, "CustomerPO", DbType.String, gspEntity.CustomerPO);
            db.AddInParameter(dbCommand, "Delivery", DbType.String, gspEntity.Delivery);
            db.AddInParameter(dbCommand, "Category", DbType.String, gspEntity.Category);
            db.AddInParameter(dbCommand, "Origion", DbType.String, gspEntity.Origion);
            db.AddInParameter(dbCommand, "Quantity", DbType.String, gspEntity.Quantity);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateGSPItemInfoRecord(GSPItemInfoEntity gspEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[GSPItemInfo] SET OrderNo= @OrderNo, ItemDetails= @ItemDetails, StyleNo= @StyleNo, TAGIDNo= @TAGIDNo, OurID= @OurID, ARTNo=@ARTNo, CustomerPO=@CustomerPO, Delivery=@Delivery, Category=@Category, Origion=@Origion, Quantity=@Quantity WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, gspEntity.ID);
            db.AddInParameter(dbCommand, "OrderNo", DbType.String, gspEntity.OrderNo);
            db.AddInParameter(dbCommand, "ItemDetails", DbType.String, gspEntity.ItemDetails);
            db.AddInParameter(dbCommand, "StyleNo", DbType.String, gspEntity.StyleNo);
            db.AddInParameter(dbCommand, "TAGIDNo", DbType.String, gspEntity.TAGIDNo);
            db.AddInParameter(dbCommand, "OurID", DbType.String, gspEntity.OurID);
            db.AddInParameter(dbCommand, "ARTNo", DbType.String, gspEntity.ARTNo);
            db.AddInParameter(dbCommand, "CustomerPO", DbType.String, gspEntity.CustomerPO);
            db.AddInParameter(dbCommand, "Delivery", DbType.String, gspEntity.Delivery);
            db.AddInParameter(dbCommand, "Category", DbType.String, gspEntity.Category);
            db.AddInParameter(dbCommand, "Origion", DbType.String, gspEntity.Origion);
            db.AddInParameter(dbCommand, "Quantity", DbType.String, gspEntity.Quantity);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

    }
}
