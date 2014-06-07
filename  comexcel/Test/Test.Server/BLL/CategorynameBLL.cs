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
    public partial class CategorynameBLL
    {
        public object GetAllCategorymasterRecord(object param)
        {
            object retObj = null;
            CategorynameDAL categorynameDAL = new CategorynameDAL();
            retObj = (object)categorynameDAL.GetAllCategorymasterRecord(param);
            return retObj;
        }
        public object SaveCategoryName(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    CategoryEntity categorynameEntity = (CategoryEntity)param;
                    CategorynameDAL categorynameDAL = new CategorynameDAL();
                    retObj = (object)categorynameDAL.SaveCategoryName(categorynameEntity, db, transaction);
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
        public object UpdateCategoryName(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    CategoryEntity categorynameEntity = (CategoryEntity)param;
                    CategorynameDAL categorynameDAL = new CategorynameDAL();
                    retObj = (object)categorynameDAL.UpdateCategoryName(categorynameEntity, db, transaction);
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
        public object GetAllCategorynameRecord(object param)
        {
            object retObj = null;
            CategorynameDAL categorynameDAL = new CategorynameDAL();
            retObj = (object)categorynameDAL.GetAllCategorynameRecord(param);
            return retObj;
        }
        public object GetcategorynamebyID(object param)
        {
            object retObj = null;
            CategorynameDAL categorynameDAL = new CategorynameDAL();
            retObj = (object)categorynameDAL.GetcategorynamebyID(param);
            return retObj;
        }
    }
}
