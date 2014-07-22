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
    public partial class LocationInfoBLL
    {
        public object GetLocationbyID(object param)
        {
            object retObj = null;
            LocationInfoDAL locDAL = new LocationInfoDAL();
            retObj = (object)locDAL.GetLocationbyID(param);
            return retObj;
        }
    }
}
