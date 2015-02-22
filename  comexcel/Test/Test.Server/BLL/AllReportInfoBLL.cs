using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Test.Domain.Model;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using Test.Server.DAL;


namespace Test.Server.BLL
{
    public partial class AllReportInfoBLL
    {
        public object GetAllSalesreportRecord(object param)
        {
            object retObj = null;
            AllReportInfoDAL allDAL = new AllReportInfoDAL();
            SalesreportEntity obj = (SalesreportEntity)param;
            retObj = (object)allDAL.GetAllSalesreportRecord(obj, param);
            return retObj;
        }

        public object GetCustomsAuditReportRecord(object param)
        {
            object retObj = null;
            AllReportInfoDAL allDAL = new AllReportInfoDAL();
            retObj = (object)allDAL.GetCustomsAuditReportRecord(param);
            return retObj;
        }

        public object GetAllBillingReportRecord(object param)
        {
            object retObj = null;
            AllReportInfoDAL allDAL = new AllReportInfoDAL();
            ReportBillinInfoEntity obj = (ReportBillinInfoEntity)param;
            retObj = (object)allDAL.GetAllBillingReportRecord(obj, param);
            return retObj;
        }

        public object GetInvoiceMonitorListRecords(object param)
        {
            object retObj = null;
            AllReportInfoDAL allDAL = new AllReportInfoDAL();
            ReportBillinInfoEntity obj = (ReportBillinInfoEntity)param;
            retObj = (object)allDAL.GetInvoiceMonitorListRecords(obj, param);
            return retObj;
        }

        public object GetAllLogisticsReports(object param)
        {
            object retObj = null;
            AllReportInfoDAL allDAL = new AllReportInfoDAL();
            ReportlogisticsRecordEntity obj = (ReportlogisticsRecordEntity)param;
            retObj = (object)allDAL.GetAllLogisticsReports(obj, param);
            return retObj;
        }

        public object GetAllLogisticsMonitorRecords(object param)
        {
            object retObj = null;
            AllReportInfoDAL allDAL = new AllReportInfoDAL();
            ReportlogisticsRecordEntity obj = (ReportlogisticsRecordEntity)param;
            retObj = (object)allDAL.GetAllLogisticsMonitorRecords(obj, param);
            return retObj;
        }
    }
}
