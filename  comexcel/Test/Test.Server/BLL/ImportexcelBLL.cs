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
    public partial class ImportexcelBLL
    {
        public object SaveImportexcelRecord(object param)
        {
            Database db = DatabaseFactory.CreateDatabase();
            object retObj = null;
            using (DbConnection connection = db.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    ImportexcelEntity importexcelEntity = (ImportexcelEntity)param;
                    ImportexcelDAL importexcelDAL = new ImportexcelDAL();
                    retObj = (object)importexcelDAL.SaveImportexcelRecord(importexcelEntity, db, transaction);
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
        public object SaveImportexcelRecordsp(object param)
        {
            object retObj = null;
            ImportexcelDAL DAL = new ImportexcelDAL();
            ImportexcelEntity obj = (ImportexcelEntity)param;
            retObj = (object)DAL.SaveImportexcelRecordsp(obj, param);
            return retObj;
        }
        public object GetAllImportExcelRecord(object param)
        {
            object retObj = null;
            ImportexcelDAL importexcelDAL = new ImportexcelDAL();
            retObj = (object)importexcelDAL.GetAllImportExcelRecord(param);
            return retObj;
        }
        public object SetPostdata(object param)
        {
            object retObj = null;
            ImportexcelDAL importexcelDAL = new ImportexcelDAL();
            ImportexcelEntity OBJ = (ImportexcelEntity)param;
            retObj = (object)importexcelDAL.SetPostdata(OBJ, param);
            return retObj;
        }
        public object Duplicateheckinv(object param)
        {
            object retObj = null;
            //string DUPINV = param.ToString();
            ImportexcelDAL importexcelDAL = new ImportexcelDAL();
            //ImportexcelEntity OBJ = (ImportexcelEntity)param;
            retObj = (object)importexcelDAL.Duplicateheckinv(param);
            return retObj;
        }
    }
}
