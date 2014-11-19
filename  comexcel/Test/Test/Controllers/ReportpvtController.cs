using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using Test.Domain.Model;
using Test.Structure;
using System.Text;



namespace Test.Controllers
{
    public class ReportpvtController : BaseController
    {
        //
        // GET: /Reportpvt/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult TTCMInformation()
        {
            return View();
        }
        [HttpPost]
        public JsonResult TTCMInformationList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetTTCMInformationRecord, null);
                    List<ExportformEntity> ItemList = null;
                    ItemList = new List<ExportformEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ExportformEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),
                                TTNo = dr["TTNo"].ToString(),
                                TTDate = dr["TTDate"].ToString(),
                                Quantity = dr["Quantity"].ToString(),
                                FOBValue = dr["FOBValue"].ToString(),
                                CMValue = dr["CMValue"].ToString()
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
        public JsonResult AllTTCMInformationttno(string ttNo, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    ExportformEntity _Model = new ExportformEntity();
                    _Model.TTNo = ttNo;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetTTCMInformationByttno, _Model);
                    List<ExportformEntity> ItemList = null;
                    ItemList = new List<ExportformEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ExportformEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),
                                TTNo = dr["TTNo"].ToString(),
                                TTDate = dr["TTDate"].ToString(),
                                Quantity = dr["Quantity"].ToString(),
                                FOBValue = dr["FOBValue"].ToString(),
                                CMValue = dr["CMValue"].ToString()
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
        public JsonResult GetCMTotalTTNo(string ttNO)
        {
            if (ttNO.ToString().Trim() == "")
            {
                return Json(new { Result = "ERROR", Message = "Enter Destination ID" });
            }
            else
            {
                try
                {
                    ExportformEntity obj = (ExportformEntity)GetCMTotalusingTTNo(ttNO);

                    return Json(obj);
                }
                catch (Exception ex)
                {
                    return Json(new { Result = "ERROR", Message = ex.Message });
                }
            }
        }

    }
}
