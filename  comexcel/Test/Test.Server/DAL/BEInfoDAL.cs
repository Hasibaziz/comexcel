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
    public partial class BEInfoDAL
    {
        public DataTable GetAllBEMasterRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, BENo, BEDate FROM BEInfo";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveBEInfo(BEInfoEntity beinfoEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO BEInfo ( BENo, BEDate ) VALUES ( @BENo, @BEDate )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "BENo", DbType.String, beinfoEntity.BENo);
            db.AddInParameter(dbCommand, "BEDate", DbType.String, beinfoEntity.BEDate);           


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
    }
}
