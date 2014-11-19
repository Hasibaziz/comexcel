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
    public partial class TTCMInformationBLL
    {
        public object GetTTCMInformationRecord(object param)
        {
            object retObj = null;
            TTCMInformationDAL ttcmDAL = new TTCMInformationDAL();
            retObj = (object)ttcmDAL.GetTTCMInformationRecord(param);
            return retObj;
        }
        public object GetTTCMInformationByttno(object param)
        {
            object retObj = null;
            TTCMInformationDAL ttcmDAL = new TTCMInformationDAL();
            retObj = (object)ttcmDAL.GetTTCMInformationByttno(param);
            return retObj;
        }
        public object GetCMTotalusingTTNo(object param)
        {
            object retObj = null;
            TTCMInformationDAL ttcmDAL = new TTCMInformationDAL();
            retObj = (object)ttcmDAL.GetCMTotalusingTTNo(param);
            return retObj;
        }
    }

}
