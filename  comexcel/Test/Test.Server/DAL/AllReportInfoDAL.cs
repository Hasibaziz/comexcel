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

        public DataTable GetCustomsAuditReportRecord(CustomsAuditReportEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object[] parameters = new object[] { obj.StartDate, obj.EndDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spGetCustomsAuditReportRecord", parameters);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetAllBillingReportRecord( ReportBillinInfoEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object[] parameters = new object[] { obj.CourierNo, obj.StartDate, obj.EndDate, obj.ExStartDate, obj.ExEndDate};
            //object[] parameters = new object[] { obj.CourierNo, obj.StartDate, obj.EndDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spGetAllBillingReportRecord", parameters);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetInvoiceMonitorListRecords(ReportBillinInfoEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object[] parameters = new object[] { obj.StartDate, obj.EndDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spGetInvoiceMonitorRecords", parameters);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetAllLogisticsReports(ReportlogisticsRecordEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object[] parameters = new object[] { obj.StartDate, obj.EndDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spGetAllLogisticsRecord", parameters);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetAllLogisticsMonitorRecords(ReportlogisticsRecordEntity obj, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object[] parameters = new object[] { obj.CnFAgent, obj.StartDate, obj.EndDate };
            DbCommand dbCommand = db.GetStoredProcCommand("spGetAllLogisticsMonitorRecords", parameters);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
