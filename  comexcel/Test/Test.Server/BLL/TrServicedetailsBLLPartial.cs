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
	public partial class TrServicedetailsBLL
	{
		public object GetAllTrServicedetailsRecord(object param)
		{
			object retObj = null;
			TrServicedetailsDAL trServicedetailsDAL = new TrServicedetailsDAL();
			retObj = (object)trServicedetailsDAL.GetAllTrServicedetailsRecord(param);
			return retObj;
		}

	}
}

