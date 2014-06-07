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
    public class CommonBLL
    {
        public object GetSaleCarDetailsInfo(object param)
        {
            object retObj = null;
            CommomDAL commomDAL = new CommomDAL();
            retObj = (object)commomDAL.GetSaleCarDetailsInfo(param);
            return retObj;
        }
    }
}
