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
    public partial class GSPFormInfoRecordDAL
    {
        public DataTable GetAllGSPFormInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT [ID],[InvoiceNo],[ContractNo],[ContractDate],[MasterContractNo],[MasterContractDate],[BuyerContractNo],[BuyerContractDate],[BKMEANo],[BINNo],[SBNo],[SBDate],[VesselNo],[VesselContractNo],[CartonNo]  FROM [Commercial].[dbo].[GSPformDetails]";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveGSPFormDetailsRecord(GSPformDetailsEntity gspfEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[GSPformDetails] ( [InvoiceNo],[ContractNo],[ContractDate],[MasterContractNo],[MasterContractDate],[BuyerContractNo],[BuyerContractDate],[BKMEANo],[BINNo],[SBNo],[SBDate],[VesselNo],[VesselContractNo],[CartonNo] ) VALUES ( @InvoiceNo, @ContractNo, @ContractDate, @MasterContractNo, @MasterContractDate, @BuyerContractNo, @BuyerContractDate, @BKMEANo, @BINNo, @SBNo, @SBDate, @VesselNo, @VesselContractNo, @CartonNo )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, gspfEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "ContractNo", DbType.String, gspfEntity.ContractNo);
            db.AddInParameter(dbCommand, "ContractDate", DbType.String, gspfEntity.ContractDate);
            db.AddInParameter(dbCommand, "MasterContractNo", DbType.String, gspfEntity.MasterContractNo);
            db.AddInParameter(dbCommand, "MasterContractDate", DbType.String, gspfEntity.MasterContractDate);
            db.AddInParameter(dbCommand, "BuyerContractNo", DbType.String, gspfEntity.BuyerContractNo);
            db.AddInParameter(dbCommand, "BuyerContractDate", DbType.String, gspfEntity.BuyerContractDate);
            db.AddInParameter(dbCommand, "BKMEANo", DbType.String, gspfEntity.BKMEANo);
            db.AddInParameter(dbCommand, "BINNo", DbType.String, gspfEntity.BINNo);
            db.AddInParameter(dbCommand, "SBNo", DbType.String, gspfEntity.SBNo);
            db.AddInParameter(dbCommand, "SBDate", DbType.String, gspfEntity.SBDate);
            db.AddInParameter(dbCommand, "VesselNo", DbType.String, gspfEntity.VesselNo);
            db.AddInParameter(dbCommand, "VesselContractNo", DbType.String, gspfEntity.VesselContractNo);
            db.AddInParameter(dbCommand, "CartonNo", DbType.String, gspfEntity.CartonNo);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateGSPFormDetailsRecord(GSPformDetailsEntity gspfEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[GSPformDetails] SET OrderNo= @OrderNo, ItemDetails= @ItemDetails, StyleNo= @StyleNo, TAGIDNo= @TAGIDNo, OurID= @OurID, ARTNo=@ARTNo, CustomerPO=@CustomerPO, Delivery=@Delivery, Category=@Category, Origion=@Origion, Quantity=@Quantity WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, gspfEntity.ID);
            db.AddInParameter(dbCommand, "InvoiceNo", DbType.String, gspfEntity.InvoiceNo);
            db.AddInParameter(dbCommand, "ContractNo", DbType.String, gspfEntity.ContractNo);
            db.AddInParameter(dbCommand, "ContractDate", DbType.String, gspfEntity.ContractDate);
            db.AddInParameter(dbCommand, "MasterContractNo", DbType.String, gspfEntity.MasterContractNo);
            db.AddInParameter(dbCommand, "MasterContractDate", DbType.String, gspfEntity.MasterContractDate);
            db.AddInParameter(dbCommand, "BuyerContractNo", DbType.String, gspfEntity.BuyerContractNo);
            db.AddInParameter(dbCommand, "BuyerContractDate", DbType.String, gspfEntity.BuyerContractDate);
            db.AddInParameter(dbCommand, "BKMEANo", DbType.String, gspfEntity.BKMEANo);
            db.AddInParameter(dbCommand, "BINNo", DbType.String, gspfEntity.BINNo);
            db.AddInParameter(dbCommand, "SBNo", DbType.String, gspfEntity.SBNo);
            db.AddInParameter(dbCommand, "VesselNo", DbType.String, gspfEntity.VesselNo);
            db.AddInParameter(dbCommand, "VesselContractNo", DbType.String, gspfEntity.VesselContractNo);
            db.AddInParameter(dbCommand, "CartonNo", DbType.String, gspfEntity.CartonNo);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

    }
}
