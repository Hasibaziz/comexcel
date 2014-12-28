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
            retObj = (object)allDAL.GetAllSalesreportRecord(param);
            return retObj;
        }
    }
}
