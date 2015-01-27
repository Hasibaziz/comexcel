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
    public partial class GroupNuserBLL
    {
        public object GetAllCreateGroupRecord(object param)
        {
            object retObj = null;
            GroupNuserDAL guDAL = new GroupNuserDAL();
            retObj = (object)guDAL.GetAllCreateGroupRecord(param);
            return retObj;
        }
        public object SaveCreateGroupInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    GroupEntity guEntity = (GroupEntity)param;
                    GroupNuserDAL guDAL = new GroupNuserDAL();
                    retObj = (object)guDAL.SaveCreateGroupInfo(guEntity, db, transaction);
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
        public object UpdateCreateGroupInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    GroupEntity guEntity = (GroupEntity)param;
                    GroupNuserDAL guDAL = new GroupNuserDAL();
                    retObj = (object)guDAL.UpdateCreateGroupInfo(guEntity, db, transaction);
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
        public object DeleteCreateGroupInfoById(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {                   
                    GroupNuserDAL guDAL = new GroupNuserDAL();
                    retObj = (object)guDAL.DeleteCreateGroupInfoById(param, db, transaction);
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
        public object GetAllCreateGroupInfoRecord(object param)
        {
            object retObj = null;
            GroupNuserDAL guDAL = new GroupNuserDAL();
            retObj = (object)guDAL.GetAllCreateGroupInfoRecord(param);
            return retObj;
        }

        public object GetAllCreateUsersListRecord(object param)
        {
            object retObj = null;
            GroupNuserDAL guDAL = new GroupNuserDAL();
            retObj = (object)guDAL.GetAllCreateUsersListRecord(param);
            return retObj;
        }
        public object SaveCreateUsersInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    CreateUserEntity usrEntity = (CreateUserEntity)param;
                    GroupNuserDAL guDAL = new GroupNuserDAL();
                    retObj = (object)guDAL.SaveCreateUsersInfo(usrEntity, db, transaction);
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
        public object UpdateCreateUsersInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    CreateUserEntity usrEntity = (CreateUserEntity)param;
                    GroupNuserDAL guDAL = new GroupNuserDAL();
                    retObj = (object)guDAL.UpdateCreateUsersInfo(usrEntity, db, transaction);
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
        public object DeleteCreateUsersById(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    GroupNuserDAL guDAL = new GroupNuserDAL();
                    retObj = (object)guDAL.DeleteCreateUsersById(param, db, transaction);
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
        public object GetGetDeplicateMailCheck(object param)
        {
            object retObj = null;
            string Email = param.ToString();
            GroupNuserDAL guDAL = new GroupNuserDAL();            
            retObj = (object)guDAL.GetGetDeplicateMailCheck(Email, param);
            return retObj;
        }

        public object GetAllLincenceKeyRecord(object param)
        {
            object retObj = null;
            GroupNuserDAL guDAL = new GroupNuserDAL();
            retObj = (object)guDAL.GetAllLincenceKeyRecord(param);
            return retObj;
        }
        public object SaveLincenceKeyInfo(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    LicenceVerification guEntity = (LicenceVerification)param;
                    GroupNuserDAL guDAL = new GroupNuserDAL();
                    retObj = (object)guDAL.SaveLincenceKeyInfo(guEntity, db, transaction);
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
