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
    public partial class AllUDInfoDAL
    {
        public DataTable GetAllUDInfoListRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            string sql = "SELECT ID, UDNo, AMDNo, (LEFT(AMDDate, 2)+ SUBSTRING(AMDDate, 3,4)+ RIGHT(AMDDate,4)) AS AMDDate, Location, Invoice, Category, Item, QTY, Unit, CONVERT(decimal(10,2), [TotalValue]) AS TotalValue, BENo, (LEFT([BEDate], 2)+ SUBSTRING([BEDate], 3,3)+ SUBSTRING([BEDate],6,6)) AS BEDate, Passbook, Pageno, BLNo, Mode FROM Importinfo ORDER BY Invoice ASC";
            DbCommand dbCommand = db.GetSqlStringCommand(sql);
            DataSet ds = db.ExecuteDataSet(dbCommand);
            return ds.Tables[0];
        }
    }
}
