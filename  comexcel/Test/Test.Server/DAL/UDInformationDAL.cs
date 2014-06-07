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
    public partial class UDInformationDAL
    {
        public DataTable GetAllUDmasterRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, UDNo, AMDNo, AMDDate FROM UDInfo";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveUDInfo(UDEntity udinfoEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO UDInfo ( UDNo, AMDNo, AMDDate ) VALUES ( @UDNo, @AMDNo, @AMDDate )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "UDNo", DbType.String, udinfoEntity.UDNo);
            db.AddInParameter(dbCommand, "AMDNo", DbType.String, udinfoEntity.AMDNo);
            db.AddInParameter(dbCommand, "AMDDate", DbType.String, udinfoEntity.AMDDate);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
    }
}
