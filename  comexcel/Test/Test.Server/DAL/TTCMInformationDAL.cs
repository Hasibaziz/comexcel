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
            string sql = "SELECT ID, InvoiceNo, InvoiceDate, ContractNo, ContractDate, TTNo, TTDate, Quantity, FOBValue, CMValue FROM ExportformDetails WHERE TTNo='"+obj.TTNo+"' ORDER BY TTNo ASC";

            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public DataTable GetCMTotalusingTTNo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            ExportformEntity obj = (ExportformEntity)param;
            string sql = "SELECT TTNo, SUM(CONVERT(FLOAT,CMValue)) AS CMTotal FROM ExportformDetails WHERE TTNo='" + obj.TTNo + "' GROUP BY TTNo";

            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
