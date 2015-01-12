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
    public partial class AllReportInfoDAL
    {
        public DataTable GetAllSalesreportRecord(SalesreportEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();           
            object[] parameters = new object[] { obj.StartDate, obj.EndDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spGetAllSalesreportRecord", parameters);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetCustomsAuditReportRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();           
            DbCommand dbCommand = db.GetStoredProcCommand("spGetCustomsAuditReportRecord");
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetAllBillingReportRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("spGetAllBillingReportRecord");
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
