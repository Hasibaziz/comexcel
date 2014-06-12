using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using Test.Domain.Model;
using Test.Structure;

namespace Test.Controllers
{
    public class ReportController : BaseController
    {
        //
        // GET: /Report/

        public ActionResult Index()
        {
            ViewData["PageHeader"] = ".";
            return View();
        }

        public ActionResult Invoice()
        {
            ImportexcelEntity impEntity = new ImportexcelEntity();
            ViewData["Name"] = GetAllCategoryName(impEntity);
            return View();
        }
        [HttpPost]
        public JsonResult AllInvoiceList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllCategoriesRecord, null);
                    List<ImportexcelEntity> ItemList = null;
                    ItemList = new List<ImportexcelEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ImportexcelEntity()
                            {
                                ID = dr["ID"].ToString(),                               
                                Invoice = dr["Invoice"].ToString(),
                                Category = dr["Category"].ToString(),
                                Item = dr["Item"].ToString(),
                                QTY = dr["QTY"].ToString(),
                                Unit = dr["Unit"].ToString(),
                                TotalValue = dr["TotalValue"].ToString(),
                                Mode = dr["Mode"].ToString(),
                                BENo = dr["BENo"].ToString(),
                                BEDate = dr["BEDate"].ToString()
                            });
                        }
                        iCount += 1;
                    }
                    var RecordCount = dt.Rows.Count;
                    var Record = ItemList;
                    return Json(new { Result = "OK", Records = Record, TotalRecordCount = RecordCount });
                }
                catch (Exception ex)
                {
                    return Json(new { Result = "ERROR", Message = ex.Message });
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        [HttpPost]
        public JsonResult AllInvoiceBycatname(ImportexcelEntity _Model, string invoice = "", string CatName = "", string SDate="", string EDate="", int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    _Model.Invoice = invoice;
                    _Model.Category = CatName;
                    _Model.StartDate = SDate;
                    _Model.EndDate = EDate;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllInvoiceBycatname, _Model);
                    List<ImportexcelEntity> ItemList = null;
                    ItemList = new List<ImportexcelEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ImportexcelEntity()
                            {
                                ID = dr["ID"].ToString(),
                                Invoice = dr["Invoice"].ToString(),
                                Category = dr["Category"].ToString(),
                                Item = dr["Item"].ToString(),
                                QTY = dr["QTY"].ToString(),
                                Unit = dr["Unit"].ToString(),
                                TotalValue = dr["TotalValue"].ToString(),
                                Mode = dr["Mode"].ToString(),
                                BENo = dr["BENo"].ToString(),
                                BEDate = dr["BEDate"].ToString()
                            });
                        }
                        iCount += 1;
                    }
                    var RecordCount = dt.Rows.Count;
                    var Record = ItemList;
                    return Json(new { Result = "OK", Records = Record, TotalRecordCount = RecordCount });
                }
                catch (Exception ex)
                {
                    return Json(new { Result = "ERROR", Message = ex.Message });
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        public JsonResult Getqtytotalval(string categoryname, string invoice, string SDate="", string EDate="")
        {
            //if ((invoice.ToString() == "") || (categoryname.ToString() == ""))
            //{
            //    return Json(new { Result = "ERROR", Message = "Enter Invoice or Category Name" });
            //}
            //else
            //{            
                try
                {
                        ImportexcelEntity obj = (ImportexcelEntity)GetqtytotalvalueRecord(categoryname, invoice, SDate, EDate);
                        return Json(obj);                   
                }
                catch (Exception ex)
                {
                    return Json(new { Result = "ERROR", Message = ex.Message });
                }
           // }
        }

     }
}
