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
    public partial class AllUDInfoBLL
    {
        public object GetAllUDInfoListRecord(object param)
        {
            object retObj = null;
            AllUDInfoDAL UDDAL = new AllUDInfoDAL();
            retObj = (object)UDDAL.GetAllUDInfoListRecord(param);
            return retObj;
        }
    }
}
