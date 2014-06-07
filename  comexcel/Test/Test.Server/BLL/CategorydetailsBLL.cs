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
    public partial class CategorydetailsBLL
    {
        public object GetAllCategorydetailsRecord(object param)
        {
            object retObj = null;
            CategorydetailsDAL categorydetailsDAL = new CategorydetailsDAL();
            retObj = (object)categorydetailsDAL.GetAllCategorydetailsRecord(param);
            return retObj;
        }

        public object SaveCategorydetails(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    CategorydetailsEntity categorydetailsEntity = (CategorydetailsEntity)param;
                    CategorydetailsDAL categorydetailsDAL = new CategorydetailsDAL();
                    retObj = (object)categorydetailsDAL.SaveCategorydetails(categorydetailsEntity, db, transaction);
                    transaction.Commit();
                }
                catch
                {
                    transaction.Rollback();
                    throw;
                }
                finally
                {
                    connection.Close();
                }
            }
            return retObj;
        }
    }
}
