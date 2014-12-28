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
    public partial class CustomsAuditBLL
    {
        public object GetCustomsAuditInfoRecord(object param)
        {
            object retObj = null;
            CustomsAuditDAL allDAL = new CustomsAuditDAL();
            retObj = (object)allDAL.GetCustomsAuditInfoRecord(param);
            return retObj;
        }
        public object GetAuditInvoiceSearchByNo(object param)
        {
            object retObj = null;
            CustomsAuditDAL allDAL = new CustomsAuditDAL();
            retObj = (object)allDAL.GetAuditInvoiceSearchByNo(param);
            return retObj;
        }
    }
}
