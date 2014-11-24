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

        public ActionResult ExportFormReport()
        {
            return View();
        }

        [HttpPost]
        public JsonResult ExportFormReportList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllExportFormReportRecord, null);
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
                                //ID = dr["ID"].ToString(),
                                SL = (iCount + 1).ToString(),
                                ItemName = dr["ItemName"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                                TTNo = dr["TTNo"].ToString(),
                                TTDate = dr["TTDate"].ToString(),
                                //ExporterID = dr["ExporterID"].ToString(),
                                ExporterName = dr["ExporterName"].ToString(),
                                RegDetails = dr["RegDetails"].ToString(),
                                //ConsigneeID = dr["ConsigneeID"].ToString(),
                                ConsigneeName = dr["ConsigneeName"].ToString(),
                                //NotifyID = dr["NotifyID"].ToString(),
                                //NotifyName = dr["NotifyName"].ToString(),
                                //HSCodeID = dr["HSCodeID"].ToString(),
                                HSCode = dr["HSCode"].ToString(),
                                //ShortName = dr["ShortName"].ToString(),
                                HSCodesecond = dr["HSCodesecond"].ToString(),
                                //HSs = dr["HSs"].ToString(),
                                CountryCode = dr["CountryCode"].ToString(),
                                Name = dr["Name"].ToString(),
                                Port = dr["Port"].ToString(),
                                //DestinationID = dr["DestinationID"].ToString(),
                                //TransportID = dr["TransportID"].ToString(),
                                TName = dr["TName"].ToString(),
                                TPort = dr["TPort"].ToString(),
                                Section = dr["Section"].ToString(),
                                Unit = dr["Unit"].ToString(),
                                Quantity = dr["Quantity"].ToString(),
                                Currency = dr["Currency"].ToString(),
                                Incoterm = dr["Incoterm"].ToString(),
                                FOBValue = dr["FOBValue"].ToString(),
                                CMValue = dr["CMValue"].ToString(),
                                //CPTFOBValue = dr["CPTFOBValue"].ToString(),
                                Freight = dr["Freight"].ToString(),

                                ExpNo = dr["CMValue"].ToString(),
                                ExpDate = dr["ExpDate"].ToString(),
                                EPNo = dr["EPNo"].ToString(),
                                BLNo = dr["BLNo"].ToString(),
                                BLDate = dr["BLNo"].ToString(),
                                ExFactoryDate = dr["ExFactoryDate"].ToString()
                            });
                        }
                        iCount += 1;
                    }
                    var RecordCount = dt.Rows.Count;
                    var Record = ItemList;
                    Session["ExpEntry"] = ItemList;
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

        /// <summary>
        /// Excel Report for Export Form Records.
        /// </summary>
        /// <param name="EX1"></param>
        /// <param name="EX2"></param>
        /// <param name="EX3"></param>
        /// <returns></returns>
        //public ActionResult ExportFormReportonExcel(string EX1 = "", string EX2 = "", string EX3 = "")
        public ActionResult ExportFormReportonExcel()
        {

            ExportformEntity _Model = new ExportformEntity();
            //_Model.StartDate = EX1;
            //_Model.EndDate = EX2;
            //_Model.EMPID = EX3;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllExportFormReportRecord, null);
            Test.Utility.Excelimport.ExcelFileResult actionResult = new Test.Utility.Excelimport.ExcelFileResult(dt) { FileDownloadName = "ExportFormReport.xls" };
            return actionResult;
        }

    }
}
