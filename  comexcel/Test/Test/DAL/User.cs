using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Test.Models;


using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.Common;
using Test.Domain.Model;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace Test.DAL
{
    public partial class User
    {
        public DataTable GetUserInfo(LoginModel param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            DbConnection connection = db.CreateConnection();


            string sql = "SELECT A.[ID], A.[UserName], A.[Password], A.[FullName], A.[Email], A.[IsActive], A.[Created], B.[NAME] AS Groups FROM [Commercial].[dbo].[User] AS A, [Commercial].[dbo].[Group] AS B  WHERE A.GroupID=B.ID AND (UserName='" + param.UserName + "' and Password='" + param.Password + "') ";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);

            dbCommand.Connection = connection;
            connection.Open();
            DataSet ds = db.ExecuteDataSet(dbCommand);
            //IDataReader ds = db.ExecuteReader(dbCommand);
            connection.Close();
            return ds.Tables[0];
        }


    }
}