using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Structure;
using Test.Domain.Model;
using System.Threading;
using System.Data;
using System.Data.OleDb;
using System.IO;
using Test.Utility;
using System.Web.UI;
using CrystalDecisions.CrystalReports.Engine;
using System.Collections;
using Test.Report;
using CrystalDecisions.Shared;


namespace Test.Controllers
{
    public class PrivateController : BaseController
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Exporter()
        {
            return View();
        }

        [HttpPost]
        public JsonResult ExporterDetailsList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllExporterDetailsRecord, null);
                    List<ExporterEntity> ItemList = null;
                    ItemList = new List<ExporterEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ExporterEntity()
                            {
                                ID = dr["ID"].ToString(),
                                ExporterNo = dr["ExporterNo"].ToString(),
                                ExporterName = dr["ExporterName"].ToString(),
                                RegDetails = dr["RegDetails"].ToString()
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
        public JsonResult AddUpdateExporterDetails(ExporterEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveExporterDetailsInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateExporterDetailsInfo, _Model);
                if (isUpdate)
                {
                    var addedModel = _Model;
                    return Json(new { Result = "OK", Record = addedModel });
                }
                else
                    return Json(new { Result = "ERROR", Message = "Information failed to save" });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        public ActionResult Consignee()
        {
            return View();
        }
        [HttpPost]
        public JsonResult ConsigneeDetailsList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllConsigneeDetailsRecord, null);
                    List<ConsigneeEntity> ItemList = null;
                    ItemList = new List<ConsigneeEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ConsigneeEntity()
                            {
                                ID = dr["ID"].ToString(),
                                ConsigneeNo = dr["ConsigneeNo"].ToString(),
                                ConsigneeName = dr["ConsigneeName"].ToString()
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
        public JsonResult AddUpdateConsigneeDetails(ConsigneeEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveConsigneeDetailsInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateConsigneeDetailsInfo, _Model);
                if (isUpdate)
                {
                    var addedModel = _Model;
                    return Json(new { Result = "OK", Record = addedModel });
                }
                else
                    return Json(new { Result = "ERROR", Message = "Information failed to save" });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        public ActionResult Notifyparty()
        {
            return View();
        }
        [HttpPost]
        public JsonResult NotifypartyDetailsList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllNotifypartyDetailsRecord, null);
                    List<NotifypartyEntity> ItemList = null;
                    ItemList = new List<NotifypartyEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new NotifypartyEntity()
                            {
                                ID = dr["ID"].ToString(),
                                NotifyNo = dr["NotifyNo"].ToString(),
                                NotifyName = dr["NotifyName"].ToString()
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
        public JsonResult AddUpdateNotifypartyDetails(NotifypartyEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveNotifypartyDetailsInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateNotifypartyDetailsInfo, _Model);
                if (isUpdate)
                {
                    var addedModel = _Model;
                    return Json(new { Result = "OK", Record = addedModel });
                }
                else
                    return Json(new { Result = "ERROR", Message = "Information failed to save" });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        public ActionResult HSCode()
        {
            return View();
        }
        [HttpPost]
        public JsonResult HSCodeDetailsList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllHSCodeDetailsRecord, null);
                    List<HSCodeEntity> ItemList = null;
                    ItemList = new List<HSCodeEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new HSCodeEntity()
                            {
                                ID = dr["ID"].ToString(),
                                HSCode = dr["HSCode"].ToString(),
                                HSCodeName = dr["HSCodeName"].ToString(),
                                ShortName = dr["ShortName"].ToString()
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
        public JsonResult AddUpdateHSCodeDetails(HSCodeEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveHSCodeDetailsInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateHSCodeDetailsInfo, _Model);
                if (isUpdate)
                {
                    var addedModel = _Model;
                    return Json(new { Result = "OK", Record = addedModel });
                }
                else
                    return Json(new { Result = "ERROR", Message = "Information failed to save" });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        public ActionResult ExportForm()
        {
            return View();
        }
        public ActionResult ExportFormEntry()
        {
            ExporterEntity exEntity = new ExporterEntity();
            ViewData["ExporterNo"] = GetAllExporterDetails(exEntity);
            ConsigneeEntity conEntity = new ConsigneeEntity();
            ViewData["ConsigneeNo"] = GetAllConsigneeDetails(conEntity);
            NotifypartyEntity notEntity = new NotifypartyEntity();
            ViewData["NotifyNo"] = GetAllNotifypartyDetails(notEntity);
            HSCodeEntity hsEntity = new HSCodeEntity();
            ViewData["HSCode"] = GetAllHSCodeDetails(hsEntity);
            return View();
        }
        [HttpPost]
        public ActionResult ExportFormEntry(ExportformEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveExportFormEntryRecord, _Model);
                    return RedirectToAction("ExportFormEntry", "Private");
                }
                else if (_Model.ID != null)
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateExportFormEntryRecord, _Model);
                    var addedModel = _Model;
                    return Json(new { Result = "OK", Record = addedModel });
                }
                //if (isUpdate)
                // {
                //     var addedModel = _Model;
                //     return Json(new { Result = "OK", Record = addedModel });
                //     //return RedirectToAction("Additemreceive", "Inventory", addedModel);
                //    }
                else
                    return Json(new { Result = "ERROR", Message = "Information failed to save" });

            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        [HttpPost]
        public JsonResult ExportFormDetailsList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllExportFormDetailsRecord, null);
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
                                ContractNo = dr["ContractNo"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                                ExporterID = dr["ExporterID"].ToString(),
                                ExporterName = dr["ExporterName"].ToString(),
                                ConsigneeID = dr["ConsigneeID"].ToString(),
                                NotifyID = dr["NotifyID"].ToString(),
                                HSCodeID = dr["HSCodeID"].ToString(),
                                FOBValue = dr["FOBValue"].ToString(),
                                CMValue = dr["CMValue"].ToString()
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
        public ActionResult ExportFormReport()
        {
            rptExportformEntity obj;


            ReportClass rptH = new ReportClass();
            ArrayList al = new ArrayList();
            rptH.FileName = Server.MapPath("/Report/ExportFormEntry.rpt");
            rptH.Load();

            List<ExportformEntity> ItemList = (List<ExportformEntity>)Session["ExpEntry"];

            foreach (ExportformEntity dr in ItemList)
            {
                obj = new rptExportformEntity();

                obj.ContractNo = dr.ContractNo;
                obj.InvoiceNo = dr.InvoiceNo;
                obj.InvoiceDate = dr.InvoiceDate;
                obj.ExporterID = dr.ExporterID;
                obj.ExporterName = dr.ExporterName;
                obj.ConsigneeID = dr.ConsigneeID;
                obj.NotifyID = dr.NotifyID;
                obj.HSCodeID = dr.HSCodeID;
                al.Add(obj);
            }

            rptH.SetDataSource(al);
            MemoryStream stream = (MemoryStream)rptH.ExportToStream(ExportFormatType.PortableDocFormat);
            return File(stream, "application/pdf");
        }

        public ActionResult Destination()
        {
            return View();
        }
        [HttpPost]
        public JsonResult DestinationList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllDestinationRecord, null);
                    List<DestinationEntity> ItemList = null;
                    ItemList = new List<DestinationEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new DestinationEntity()
                            {
                                ID = dr["ID"].ToString(),
                                Destination = dr["Destination"].ToString(),
                                Port = dr["Port"].ToString()
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
        public JsonResult AddUpdateDestinationDetails(DestinationEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveDestinationInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateDestinationInfo, _Model);
                if (isUpdate)
                {
                    var addedModel = _Model;
                    return Json(new { Result = "OK", Record = addedModel });
                }
                else
                    return Json(new { Result = "ERROR", Message = "Information failed to save" });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        public JsonResult AllExporterDetails()
        {
            try
            {
                ExporterEntity models = new ExporterEntity();
                var jList = GetAllExporterDetails(models).Select(c => new { DisplayText = c.Text, Value = c.Value });
                return Json(new { Result = "OK", Options = jList });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        public JsonResult AllConsigneeDetails()
        {
            try
            {
                ConsigneeEntity models = new ConsigneeEntity();
                var jList = GetAllConsigneeDetails(models).Select(c => new { DisplayText = c.Text, Value = c.Value });
                return Json(new { Result = "OK", Options = jList });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        public JsonResult AllNotifypartyDetails()
        {
            try
            {
                NotifypartyEntity models = new NotifypartyEntity();
                var jList = GetAllNotifypartyDetails(models).Select(c => new { DisplayText = c.Text, Value = c.Value });
                return Json(new { Result = "OK", Options = jList });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        public JsonResult AllHSCodeDetails()
        {
            try
            {
                HSCodeEntity models = new HSCodeEntity();
                var jList = GetAllHSCodeDetails(models).Select(c => new { DisplayText = c.Text, Value = c.Value });
                return Json(new { Result = "OK", Options = jList });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
    }
}
