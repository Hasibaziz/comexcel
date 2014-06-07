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
    public partial class CategorynameDAL
    {
        public DataTable GetAllCategorymasterRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, Name FROM Category";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public bool SaveCategoryName(CategoryEntity categorynameEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO Category ( Name) VALUES (  @name )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "Name", DbType.String, categorynameEntity.Name);
            

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        public bool UpdateCategoryName(CategoryEntity categorynameEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE Category SET Name= @name WHERE ID=@Id";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, categorynameEntity.ID);
            db.AddInParameter(dbCommand, "Name", DbType.String, categorynameEntity.Name);           

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }

        public DataTable GetAllCategorynameRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, Name FROM Category";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetcategorynamebyID(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, Name FROM Category";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
