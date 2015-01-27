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
    public partial class GroupNuserDAL
    {
        public DataTable GetAllCreateGroupRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, Name, Description FROM [Commercial].[dbo].[Group] ORDER BY Name ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveCreateGroupInfo(GroupEntity guEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[Group] ( Name, Description) VALUES (  @Name,  @Description )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "Name", DbType.String, guEntity.GroupName);
            db.AddInParameter(dbCommand, "Description", DbType.String, guEntity.Description);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateCreateGroupInfo(GroupEntity guEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[Group] SET Name= @GroupName, Description= @Description WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "ID", DbType.String, guEntity.ID);
            db.AddInParameter(dbCommand, "Name", DbType.String, guEntity.GroupName);
            db.AddInParameter(dbCommand, "Description", DbType.String, guEntity.Description);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool DeleteCreateGroupInfoById(object param, Database db, DbTransaction transaction)
        {
            string sql = "DELETE FROM [Commercial].[dbo].[Group] WHERE ID=@Id";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "Id", DbType.String, param);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetAllCreateGroupInfoRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, Name FROM [Commercial].[dbo].[Group] ORDER BY Name ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }


        public DataTable GetAllCreateUsersListRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            //string sql = "SELECT [ID], [UserName], [Password], [FullName], [Email], [IsActive], [Created], [GroupID]  FROM [Commercial].[dbo].[User] ORDER BY UserName ASC";
            //DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DbCommand dbCommand = db.GetStoredProcCommand("spGetUserRecord");  
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveCreateUsersInfo(CreateUserEntity usrEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[User] ( UserName, Password, FullName, Email, IsActive, Created, GroupID ) VALUES (  @UserName, @Password, @FullName, @Email, @IsActive, @Created, @GroupID )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "UserName", DbType.String, usrEntity.UserName);
            db.AddInParameter(dbCommand, "Password", DbType.String, usrEntity.Password);
            db.AddInParameter(dbCommand, "FullName", DbType.String, usrEntity.FullName);
            db.AddInParameter(dbCommand, "Email", DbType.String, usrEntity.Email);
            db.AddInParameter(dbCommand, "IsActive", DbType.String, usrEntity.IsActive);
            db.AddInParameter(dbCommand, "Created", DbType.String, usrEntity.Created);
            db.AddInParameter(dbCommand, "GroupID", DbType.String, usrEntity.GroupID);
            

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool UpdateCreateUsersInfo(CreateUserEntity usrEntity, Database db, DbTransaction transaction)
        {
            string sql = "UPDATE [Commercial].[dbo].[User] SET UserName= @UserName, Password= @Password, FullName=@FullName, Email=@Email, IsActive=@IsActive, GroupID=@GroupID  WHERE ID=@ID";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "ID", DbType.String, usrEntity.ID);
            db.AddInParameter(dbCommand, "UserName", DbType.String, usrEntity.UserName);
            db.AddInParameter(dbCommand, "Password", DbType.String, usrEntity.Password);
            db.AddInParameter(dbCommand, "FullName", DbType.String, usrEntity.FullName);
            db.AddInParameter(dbCommand, "Email", DbType.String, usrEntity.Email);
            db.AddInParameter(dbCommand, "IsActive", DbType.String, usrEntity.IsActive);
            //db.AddInParameter(dbCommand, "Created", DbType.String, usrEntity.Created);
            db.AddInParameter(dbCommand, "GroupID", DbType.String, usrEntity.GroupID);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public bool DeleteCreateUsersById(object param, Database db, DbTransaction transaction)
        {
            string sql = "DELETE FROM [Commercial].[dbo].[User] WHERE ID=@Id";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            db.AddInParameter(dbCommand, "Id", DbType.String, param);

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
        public DataTable GetGetDeplicateMailCheck(string UserMail, object param)
        {
            Database db = DatabaseFactory.CreateDatabase();

            //string sql = "SELECT COUNT(Usermail) as MailCount FROM ITInventory.dbo.Login_info GROUP BY Usermail HAVING COUNT(Usermail)>=1";
            string sql = "SELECT [ID], [Email]  FROM [Commercial].[dbo].[User] where Email like '%" + UserMail + "%'";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }

        public DataTable GetAllLincenceKeyRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = " SELECT  ID, LicenceKey, KeyDate  FROM [Commercial].[dbo].[LicenceVerify] ";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
        public bool SaveLincenceKeyInfo(LicenceVerification guEntity, Database db, DbTransaction transaction)
        {
            string sql = "INSERT INTO [Commercial].[dbo].[LicenceVerify] ( LicenceKey, KeyDate) VALUES (  @LicenceKey, @KeyDate )";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            db.AddInParameter(dbCommand, "LicenceKey", DbType.String, guEntity.LicenceKey);
            db.AddInParameter(dbCommand, "KeyDate", DbType.String, guEntity.KeyDate); 

            db.ExecuteNonQuery(dbCommand, transaction);
            return true;
        }
    }
}
