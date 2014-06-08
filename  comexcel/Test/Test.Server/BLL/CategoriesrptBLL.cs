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
    public partial class CategoriesrptBLL
    {
        public object GetAllCategoriesrpt(object param)
        {
            object retObj = null;
            CategoriesrptDAL rptDAL = new CategoriesrptDAL();
            retObj = (object)rptDAL.GetAllCategoriesrpt(param);
            return retObj;
        }
        public object GetAllInvoiceBycatname(object param)
        {
            object retObj = null;
            CategoriesrptDAL rptDAL = new CategoriesrptDAL();
            ImportexcelEntity impEntity = (ImportexcelEntity)param;
            retObj = (object)rptDAL.GetAllInvoiceBycatname(impEntity, param);
            return retObj;
        }
        public object GetqtytotalvalueRecord(object param)
        {
            object retObj = null;
            CategoriesrptDAL rptDAL = new CategoriesrptDAL();
            retObj = (object)rptDAL.GetqtytotalvalueRecord(param);
            return retObj;
        }
    }
}
