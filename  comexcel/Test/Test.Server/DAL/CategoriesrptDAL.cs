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
    public partial class CategoriesrptDAL
    {
        public DataTable GetAllCategoriesrpt(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, [Invoice], [Category], [Item], [QTY], [Unit], CONVERT(decimal(10,2), [TotalValue]) AS [TotalValue], [Mode], [BENo], (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate FROM [Commercial].[dbo].[Importinfo] ORDER BY Invoice, Category  ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetAllInvoiceBycatname(ImportexcelEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object[] parameters = new object[] { obj.Invoice, obj.Category, obj.StartDate, obj.EndDate};
            DbCommand dbCommand = db.GetStoredProcCommand("spGetInvoiceBycatname", parameters);

           
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetqtytotalvalueRecord(object param)
        {
            ImportexcelEntity obj = (ImportexcelEntity)param;
            Database db = DatabaseFactory.CreateDatabase();
            //string sql = "SELECT sum(cast(CAST(QTY AS FLOAT) AS INT)) AS SumQTY, sum(cast(CAST(TotalValue AS FLOAT) AS INT)) AS SumTotalval FROM [Commercial].[dbo].[Importinfo] GROUP BY '" + obj.Category + "', '" + obj.Invoice + "' ORDER BY '" + obj.Category + "', '" + obj.Invoice + "'  ASC";
            //DbCommand dbCommand = db.GetSqlStringCommand(sql);

            object[] parameters = new object[] { obj.Invoice, obj.Category, obj.StartDate, obj.EndDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spGetSumqtytotalvalue", parameters);

            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
