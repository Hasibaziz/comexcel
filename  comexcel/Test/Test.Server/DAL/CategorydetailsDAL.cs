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
    public partial class CategorydetailsDAL
    {
        public DataTable GetAllCategorydetailsRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, CategoryID, Item FROM Categoryitem";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveCategorydetails(CategorydetailsEntity categorydetailsEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO Categoryitem ( CategoryID, Item ) VALUES ( @CategoryID,  @item )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "CategoryID", DbType.String, categorydetailsEntity.CategoryID);
            db.AddInParameter(dbCommand, "Item", DbType.String, categorydetailsEntity.Item);


            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
    }
}
