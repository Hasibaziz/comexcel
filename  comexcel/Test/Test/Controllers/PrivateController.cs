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
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.pdf.draw;
using System.Text;
using iTextSharp.text.html.simpleparser;
using System.Text.RegularExpressions;



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
                                 HSCodesecond = dr["HSCodesecond"].ToString(),
                                HSCodeName = dr["HSCodeName"].ToString()
                               
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

        /// <summary>
        /// Exporter Form Details View, New Add, Edit and Update
        /// </summary>
        /// <returns></returns>
        public ActionResult ExportFormEntry()
        {
            ExporterEntity exEntity = new ExporterEntity();
            ViewData["ExporterNo"] = GetAllExporterDetails(exEntity);
            ConsigneeEntity conEntity = new ConsigneeEntity();
            ViewData["ConsigneeNo"] = GetAllConsigneeDetails(conEntity);
            NotifypartyEntity notEntity = new NotifypartyEntity();
            ViewData["NotifyNo"] = GetAllNotifypartyDetails(notEntity);
            //HSCodeEntity hsEntity = new HSCodeEntity();
            //ViewData["HSCode"] = GetAllHSCodeDetails(hsEntity);
            //HSCodeEntity hssEntity = new HSCodeEntity();
            //ViewData["HSs"] = GetAllHSCodeDetailssecond(hssEntity);
            DestinationEntity dsEntity = new DestinationEntity();
            ViewData["CountryCode"] = GetAllDestinationDetails(dsEntity);
            ModeinfoEntity tEntity = new ModeinfoEntity();
            ViewData["Name"] = GetAllModeinfoDetails(tEntity);
            return View();
        }
        public ActionResult ExporterFormUpdate()
        {
            ExporterEntity exEntity = new ExporterEntity();
            ViewData["ExporterNo"] = GetAllExporterDetails(exEntity);
            ConsigneeEntity conEntity = new ConsigneeEntity();
            ViewData["ConsigneeNo"] = GetAllConsigneeDetails(conEntity);
            NotifypartyEntity notEntity = new NotifypartyEntity();
            ViewData["NotifyNo"] = GetAllNotifypartyDetails(notEntity);
            //HSCodeEntity hsEntity = new HSCodeEntity();
            //ViewData["HSCode"] = GetAllHSCodeDetails(hsEntity);
            //HSCodeEntity hssEntity = new HSCodeEntity();
            //ViewData["HSs"] = GetAllHSCodeDetailssecond(hssEntity);
            DestinationEntity dsEntity = new DestinationEntity();
            ViewData["CountryCode"] = GetAllDestinationDetails(dsEntity);
            ModeinfoEntity tEntity = new ModeinfoEntity();
            ViewData["Name"] = GetAllModeinfoDetails(tEntity);
            return View();
        }
        [HttpGet]
        public ActionResult ExporterFormUpdateByInvoiceNo(String ID)
        {
            ExportformEntity _Model=new ExportformEntity();

            ExporterEntity exEntity = new ExporterEntity();
            ViewData["ExporterNo"] = GetAllExporterDetails(exEntity);
            ConsigneeEntity conEntity = new ConsigneeEntity();
            ViewData["ConsigneeNo"] = GetAllConsigneeDetails(conEntity);
            NotifypartyEntity notEntity = new NotifypartyEntity();
            ViewData["NotifyNo"] = GetAllNotifypartyDetails(notEntity);
            //HSCodeEntity hsEntity = new HSCodeEntity();
            //ViewData["HSCode"] = GetAllHSCodeDetails(hsEntity);
            //HSCodeEntity hssEntity = new HSCodeEntity();
            //ViewData["HSs"] = GetAllHSCodeDetailssecond(hssEntity);
            DestinationEntity dsEntity = new DestinationEntity();
            ViewData["CountryCode"] = GetAllDestinationDetails(dsEntity);
            ModeinfoEntity tEntity = new ModeinfoEntity();
            ViewData["Name"] = GetAllModeinfoDetails(tEntity);

            if (ID != null)
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetExporterFormUpdateByInvoiceNo, ID);
                List<ExportformEntity> ItemList = null;
                ItemList = new List<ExportformEntity>();

                foreach (DataRow dr in dt.Rows)
                {
                    _Model.ID = dr["ID"].ToString();
                    _Model.ItemName = dr["ItemName"].ToString();
                    _Model.ContractNo = dr["ContractNo"].ToString();
                    _Model.ContractDate = dr["ContractDate"].ToString();
                    _Model.InvoiceNo = dr["InvoiceNo"].ToString();
                    _Model.InvoiceDate = dr["InvoiceDate"].ToString();
                    _Model.TTNo = dr["TTNo"].ToString();
                    _Model.TTDate = dr["TTDate"].ToString();
                    _Model.ExporterID = dr["ExporterID"].ToString();
                    _Model.ExporterName = dr["ExporterName"].ToString();
                    _Model.RegDetails = dr["RegDetails"].ToString();
                    _Model.ConsigneeID = dr["ConsigneeID"].ToString();
                    _Model.ConsigneeName = dr["ConsigneeName"].ToString();
                    _Model.NotifyID = dr["NotifyID"].ToString();
                    _Model.NotifyName = dr["NotifyName"].ToString();
                    //_Model.HSCodeID = dr["HSCodeID"].ToString();
                    _Model.HSCode = dr["HSCode"].ToString();
                    //_Model.ShortName = dr["ShortName"].ToString();
                    _Model.HSCodesecond = dr["HSCodesecond"].ToString();
                    //_Model.HSs = dr["HSs"].ToString();
                    _Model.CountryCode = dr["CountryCode"].ToString();
                    _Model.Name = dr["Name"].ToString();
                    _Model.Port = dr["Port"].ToString();
                    _Model.DestinationID = dr["DestinationID"].ToString();
                    _Model.TransportID = dr["TransportID"].ToString();
                    _Model.TName = dr["TName"].ToString();
                    _Model.TPort = dr["TPort"].ToString();
                    _Model.Section = dr["Section"].ToString();
                    _Model.Unit = dr["Unit"].ToString();
                    _Model.Quantity = dr["Quantity"].ToString();
                    _Model.Currency = dr["Currency"].ToString();
                    _Model.Incoterm = dr["Incoterm"].ToString();
                    _Model.FOBValue = dr["FOBValue"].ToString();
                    _Model.CMValue = dr["CMValue"].ToString();
                    _Model.CPTFOBValue = dr["CPTFOBValue"].ToString();
                    _Model.Freight = dr["Freight"].ToString();

                    _Model.ExpNo = dr["ExpNo"].ToString();
                    _Model.ExpDate = dr["ExpDate"].ToString();
                    _Model.BLNo = dr["BLNo"].ToString();
                    _Model.BLDate = dr["BLNo"].ToString();
                    _Model.ExFactoryDate = dr["ExFactoryDate"].ToString();
                }                
            }
            else
            {
                return View("ExportFormEntry", _Model);
               //return Json(new { Result = "ERROR", Message = "Information failed to Open" });
            }
            return View("ExporterFormUpdate", _Model);
        }
        [HttpPost]
        public ActionResult ExportFormEntry(ExportformEntity _Model)
        {
            var isSuccess = false;
            var message = "";
            if (_Model.CPTValue != null)
            {
                _Model.FOBValue = _Model.CPTValue;
                _Model.CMValue = _Model.CPTCMValue;
            }
            try
            {               
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                    //return View(_Model);
                }

                _Model.CurrentDate = DateTime.Now.ToString();
                bool isUpdate = false;
                if (_Model.ID == null)
                {
                    if (DuplicateInvoiceNo(_Model.InvoiceNo) != false)
                    {
                        //return Json(new { Result = "ERROR", Message = "The Invoice Number is already taken. Please choose another." });
                        //return Json(new { result }, JsonRequestBehavior.AllowGet);
                         isSuccess = true;
                         message = "The Invoice Number is already taken. Please choose another.";
                         var jsonData = new { isSuccess, message };
                         return Json(jsonData);
                       }
                    else
                    {
                        isUpdate = (bool)ExecuteDB(TestTask.AG_SaveExportFormEntryRecord, _Model);
                        return RedirectToAction("ExportFormEntry", "Private");
                    }
                }
                else if (_Model.ID != null)
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateExportFormEntryRecord, _Model);
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("ExportForm", "Private", addedModel);
                }
                //if (isUpdate)
                //{
                //    var addedModel = _Model;
                //    //return Json(new { Result = "OK", Record = addedModel });
                //    return RedirectToAction("ExportForm", "Private", addedModel);
                //}
                else
                    isSuccess = true;
                    message = "ERROR! Information failed to save";
                    var ERRORMSG = new { isSuccess, message };
                    return Json(ERRORMSG);
                    //return Json(new { Result = "ERROR", Message = "Information failed to save" });

            }
            catch (Exception ex)
            {
               return Json(new { Result = "ERROR", Message = ex.Message });
               
            }
        }
       
        /// <summary>
        /// Dupliate Invoice value checking.
        /// </summary>
        /// <param name="invoiceno"></param>
        /// <returns></returns>
        public bool DuplicateInvoiceNo(string invoiceno)
        {
            try
            {
                ExportformEntity obj = (ExportformEntity)GetDuplicateInvoiceno(invoiceno);
                //var obj1 = GetDupMail(UserID);                
                if (obj.InvoiceNo == null)
                    return false;
                else
                    return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        /// 
        /// Searching using the Invoice No, passing Model with values. for only update.
        ///

        //[HttpGet]
        //public ActionResult ExporterFormSearchByInvoiceNo(String invoiceno)
        //{
        //    ExportformEntity _Model = new ExportformEntity();

        //    ExporterEntity exEntity = new ExporterEntity();
        //    ViewData["ExporterNo"] = GetAllExporterDetails(exEntity);
        //    ConsigneeEntity conEntity = new ConsigneeEntity();
        //    ViewData["ConsigneeNo"] = GetAllConsigneeDetails(conEntity);
        //    NotifypartyEntity notEntity = new NotifypartyEntity();
        //    ViewData["NotifyNo"] = GetAllNotifypartyDetails(notEntity);
        //    HSCodeEntity hsEntity = new HSCodeEntity();
        //    ViewData["HSCode"] = GetAllHSCodeDetails(hsEntity);
        //    DestinationEntity dsEntity = new DestinationEntity();
        //    ViewData["CountryCode"] = GetAllDestinationDetails(dsEntity);
        //    ModeinfoEntity tEntity = new ModeinfoEntity();
        //    ViewData["Name"] = GetAllModeinfoDetails(tEntity);

        //    if (invoiceno != null)
        //    {
        //        DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetExporterFormSearchByInvoiceNo, invoiceno);      

        //        foreach (DataRow dr in dt.Rows)
        //        {
        //            _Model.ID = dr["ID"].ToString();
        //            _Model.ContractNo = dr["ContractNo"].ToString();
        //            _Model.ContractDate = dr["ContractDate"].ToString();
        //            _Model.InvoiceNo = dr["InvoiceNo"].ToString();
        //            _Model.InvoiceDate = dr["InvoiceDate"].ToString();
        //            _Model.TTNo = dr["TTDate"].ToString();
        //            _Model.TTDate = dr["TTNo"].ToString();
        //            _Model.ExporterID = dr["ExporterID"].ToString();
        //            _Model.ExporterName = dr["ExporterName"].ToString();
        //            _Model.RegDetails = dr["RegDetails"].ToString();
        //            _Model.ConsigneeID = dr["ConsigneeID"].ToString();
        //            _Model.ConsigneeName = dr["ConsigneeName"].ToString();
        //            _Model.NotifyID = dr["NotifyID"].ToString();
        //            _Model.NotifyName = dr["NotifyName"].ToString();
        //            _Model.HSCodeID = dr["HSCodeID"].ToString();
        //            _Model.HSCode = dr["HSCode"].ToString();
        //            _Model.ShortName = dr["ShortName"].ToString();
        //            _Model.CountryCode = dr["CountryCode"].ToString();
        //            _Model.Name = dr["Name"].ToString();
        //            _Model.Port = dr["Port"].ToString();
        //            _Model.DestinationID = dr["DestinationID"].ToString();
        //            _Model.TransportID = dr["TransportID"].ToString();
        //            _Model.TName = dr["TName"].ToString();
        //            _Model.TPort = dr["TPort"].ToString();
        //            _Model.Section = dr["Section"].ToString();
        //            _Model.Unit = dr["Unit"].ToString();
        //            _Model.Quantity = dr["Quantity"].ToString();
        //            _Model.Currency = dr["Currency"].ToString();
        //            _Model.Incoterm = dr["Incoterm"].ToString();
        //            _Model.FOBValue = dr["FOBValue"].ToString();
        //            _Model.CMValue = dr["CMValue"].ToString();

        //            _Model.ExpNo = dr["ExpNo"].ToString();
        //            _Model.ExpDate = dr["ExpDate"].ToString();
        //            _Model.BLNo = dr["BLNo"].ToString();
        //            _Model.BLDate = dr["BLNo"].ToString();
        //            _Model.ExFactoryDate = dr["ExFactoryDate"].ToString();
        //        }
        //    }
        //    else
        //    {
        //        return View("ExportFormEntry", _Model);
        //        //return Json(new { Result = "ERROR", Message = "Information failed to Open" });
        //    }
        //    return View("ExportFormEntry", _Model);
        //}

        /// <summary>
        /// Searching using the Invoice No, passing only the values for different Invoice with same information.
        /// </summary>
        /// <param name="invoiceno"></param>
        /// <returns></returns>
        public JsonResult ExporterFormSearchByInvoiceNo(string invoiceno)
        {
            try
            {
                ExportformEntity obj = (ExportformEntity)SearchByInvoiceNo(invoiceno);

                return Json(obj);
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        public object SearchByInvoiceNo(string invoice)
        {
            ExportformEntity _Model = new ExportformEntity();
            //_Model.InvoiceNo = invoiceno;

            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetExporterFormSearchByInvoiceNo, invoice);
            foreach (DataRow dr in dt.Rows)
            {
                _Model.ItemName = dr["ItemName"].ToString();
                _Model.ContractNo = dr["ContractNo"].ToString();
                _Model.ContractDate = dr["ContractDate"].ToString();
                _Model.InvoiceNo = dr["InvoiceNo"].ToString();
                _Model.InvoiceDate = dr["InvoiceDate"].ToString();
                _Model.TTNo = dr["TTNo"].ToString();
                _Model.TTDate = dr["TTDate"].ToString();
                _Model.ExporterID = dr["ExporterID"].ToString();
                _Model.ExporterName = dr["ExporterName"].ToString();
                _Model.RegDetails = dr["RegDetails"].ToString();
                _Model.ConsigneeID = dr["ConsigneeID"].ToString();
                _Model.ConsigneeName = dr["ConsigneeName"].ToString();
                _Model.NotifyID = dr["NotifyID"].ToString();
                _Model.NotifyName = dr["NotifyName"].ToString();
                //_Model.HSCodeID = dr["HSCodeID"].ToString();
                _Model.HSCode = dr["HSCode"].ToString();
                _Model.HSCodesecond = dr["HSCodesecond"].ToString();
                //_Model.HSs = dr["HSs"].ToString();
                //_Model.ShortName = dr["ShortName"].ToString();
                _Model.CountryCode = dr["CountryCode"].ToString();
                _Model.Name = dr["Name"].ToString();
                _Model.Port = dr["Port"].ToString();
                _Model.DestinationID = dr["DestinationID"].ToString();
                _Model.TransportID = dr["TransportID"].ToString();
                _Model.TName = dr["TName"].ToString();
                _Model.TPort = dr["TPort"].ToString();
                _Model.Section = dr["Section"].ToString();
                _Model.Unit = dr["Unit"].ToString();
                _Model.Quantity = dr["Quantity"].ToString();
                _Model.Currency = dr["Currency"].ToString();
                _Model.Incoterm = dr["Incoterm"].ToString();
                _Model.FOBValue = dr["FOBValue"].ToString();
                _Model.CMValue = dr["CMValue"].ToString();
                _Model.CPTFOBValue = dr["CPTFOBValue"].ToString();
                _Model.Freight = dr["Freight"].ToString();

                _Model.ExpNo = dr["ExpNo"].ToString();
                _Model.ExpDate = dr["ExpDate"].ToString();
                _Model.BLNo = dr["BLNo"].ToString();
                _Model.BLDate = dr["BLDate"].ToString();
                _Model.ExFactoryDate = dr["ExFactoryDate"].ToString();

            }
            return _Model;
        }

        /// <summary>
        /// To display the Information on Grid using the Jquery.
        /// </summary>
        /// <param name="jtStartIndex"></param>
        /// <param name="jtPageSize"></param>
        /// <param name="jtSorting"></param>
        /// <returns></returns>
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
                                ItemName = dr["ItemName"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                                TTNo = dr["TTNo"].ToString(),
                                TTDate = dr["TTDate"].ToString(),
                                ExporterID = dr["ExporterID"].ToString(),
                                ExporterName = dr["ExporterName"].ToString(),
                                RegDetails = dr["RegDetails"].ToString(),
                                ConsigneeID = dr["ConsigneeID"].ToString(),
                                ConsigneeName = dr["ConsigneeName"].ToString(),
                                NotifyID = dr["NotifyID"].ToString(),
                                NotifyName = dr["NotifyName"].ToString(),
                                //HSCodeID = dr["HSCodeID"].ToString(),
                                HSCode = dr["HSCode"].ToString(),
                                //ShortName = dr["ShortName"].ToString(),
                                HSCodesecond = dr["HSCodesecond"].ToString(),
                                //HSs = dr["HSs"].ToString(),
                                CountryCode = dr["CountryCode"].ToString(),
                                Name = dr["Name"].ToString(),
                                Port = dr["Port"].ToString(),
                                DestinationID = dr["DestinationID"].ToString(),
                                TransportID = dr["TransportID"].ToString(),
                                TName = dr["TName"].ToString(),
                                TPort=dr["TPort"].ToString(),
                                Section = dr["Section"].ToString(),
                                Unit = dr["Unit"].ToString(),
                                Quantity = dr["Quantity"].ToString(),
                                Currency = dr["Currency"].ToString(),
                                Incoterm = dr["Incoterm"].ToString(),
                                FOBValue = dr["FOBValue"].ToString(),
                                CMValue = dr["CMValue"].ToString(),
                                CPTFOBValue = dr["CPTFOBValue"].ToString(),
                                Freight = dr["Freight"].ToString(),

                                ExpNo = dr["CMValue"].ToString(),
                                ExpDate = dr["ExpDate"].ToString(),
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
        /// Searching the Value using Jquery.
        /// </summary>
        /// <param name="Invno"></param>
        /// <param name="jtStartIndex"></param>
        /// <param name="jtPageSize"></param>
        /// <param name="jtSorting"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult InvoiceSearchByNo(string Invno, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    ExportformEntity _Model = new ExportformEntity();
                    _Model.InvoiceNo = Invno;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetInvoiceSearchByNo, _Model);
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
                                ItemName = dr["ItemName"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                                TTNo = dr["TTNo"].ToString(),
                                TTDate = dr["TTDate"].ToString(),
                                ExporterID = dr["ExporterID"].ToString(),
                                ExporterName = dr["ExporterName"].ToString(),
                                RegDetails = dr["RegDetails"].ToString(),
                                ConsigneeID = dr["ConsigneeID"].ToString(),
                                ConsigneeName = dr["ConsigneeName"].ToString(),
                                NotifyID = dr["NotifyID"].ToString(),
                                NotifyName = dr["NotifyName"].ToString(),
                                //HSCodeID = dr["HSCodeID"].ToString(),
                                HSCode = dr["HSCode"].ToString(),
                                HSCodesecond = dr["HSCodesecond"].ToString(),
                                //HSs = dr["HSs"].ToString(),
                                //ShortName = dr["ShortName"].ToString(),
                                CountryCode = dr["CountryCode"].ToString(),
                                Name = dr["Name"].ToString(),
                                Port = dr["Port"].ToString(),
                                DestinationID = dr["DestinationID"].ToString(),
                                TransportID = dr["TransportID"].ToString(),
                                TName = dr["TName"].ToString(),
                                TPort = dr["TPort"].ToString(),
                                Section = dr["Section"].ToString(),
                                Unit = dr["Unit"].ToString(),
                                Quantity = dr["Quantity"].ToString(),
                                Currency = dr["Currency"].ToString(),
                                Incoterm = dr["Incoterm"].ToString(),
                                FOBValue = dr["FOBValue"].ToString(),
                                CMValue = dr["CMValue"].ToString(),
                                CPTFOBValue = dr["CPTFOBValue"].ToString(),
                                Freight = dr["Freight"].ToString(),

                                ExpNo = dr["CMValue"].ToString(),
                                ExpDate = dr["ExpDate"].ToString(),
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
        /// ItemList pass using the ExpEntry for creating the SAP Crystal Reporting.
        /// </summary>
        /// <returns></returns>
        public ActionResult ExportFormReport()
        {
            rptExportformEntity obj;


            ReportClass rptH = new ReportClass();
            ArrayList al = new ArrayList();
            rptH.FileName = Server.MapPath("/Report/ExportReports.rpt");
            rptH.Load();

            List<ExportformEntity> ItemList = (List<ExportformEntity>)Session["ExpEntry"];

            //foreach (ExportformEntity dr in ItemList)
            //{
            //    obj = new rptExportformEntity();

            //    obj.ID = dr.ID;                 
            //    obj.ContractNo = dr.ContractNo;
            //    obj.ContractDate = dr.ContractDate;
            //    obj.InvoiceNo = dr.InvoiceNo;
            //    obj.InvoiceDate = dr.InvoiceDate;
            //    obj.TTNo = dr.TTDate;
            //    obj.TTDate = dr.TTNo;
            //    obj.ExporterID = dr.ExporterID;
            //    obj.ExporterName = dr.ExporterName;
            //    obj.RegDetails = dr.RegDetails;
            //    obj.ConsigneeID = dr.ConsigneeID;
            //    obj.ConsigneeName = dr.ConsigneeName;
            //    obj.NotifyID = dr.NotifyID;
            //    obj.NotifyName = dr.NotifyName;
            //    obj.HSCodeID = dr.HSCodeID;
            //    obj.HSCode = dr.HSCode;
            //    obj.ShortName = dr.ShortName;
            //    obj.CountryCode = dr.CountryCode;
            //    obj.Name = dr.Name;
            //    obj.Port = dr.Port;
            //    obj.DestinationID = dr.DestinationID;
            //    obj.TransportID = dr.TransportID;
            //    obj.TName = dr.TName;
            //    obj.TPort = dr.TPort;
            //    obj.Section = dr.Section;
            //    obj.Unit = dr.Unit;
            //    obj.Quantity = dr.Quantity;
            //    obj.Currency = dr.Currency;
            //    obj.Incoterm = dr.Incoterm;
            //    obj.FOBValue = dr.FOBValue;
            //    obj.CMValue = dr.CMValue;

            //    obj.ExpNo = dr.CMValue;
            //    obj.ExpDate = dr.ExpDate;
            //    obj.BLNo = dr.BLNo;
            //    obj.BLDate = dr.BLNo;
            //    obj.ExFactoryDate = dr.ExFactoryDate;

            //    Response.Write(obj.BLDate = dr.BLNo + "UserName:");
            //    //    Response.Write(dr["name"] + "--------------" + dr["email"] + "--------------" + dr["pwd"]+ "<br/>");

            //    al.Add(obj);
            //}

            //rptH.SetDataSource(al);           
            rptH.SetDataSource (ItemList);
            MemoryStream stream = (MemoryStream)rptH.ExportToStream(ExportFormatType.PortableDocFormat);
            return File(stream, "application/pdf");
        }

        /// <summary>
        /// Destination Details view, add, Update.
        /// </summary>
        /// <returns></returns>
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
                                CountryCode = dr["CountryCode"].ToString(),
                                Name = dr["Name"].ToString(),
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
        
        /// <summary>
        /// Mode Detaisl View, Add, Update.
        /// </summary>
        /// <returns></returns>
        public ActionResult Modeinfo()
        {
            return View();
        }
        [HttpPost]
        public JsonResult ModeinfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllModemasterRecord, null);
                    List<ModeinfoEntity> ItemList = null;
                    ItemList = new List<ModeinfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ModeinfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                Name = dr["Name"].ToString(),
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
        public JsonResult AddUpdateModeInfo(ModeinfoEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveModeInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateModeInfo, _Model);
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

        /// <summary>
        ///  To Collect all ExporterDetails 
        /// </summary>
        /// <returns></returns>
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
        public JsonResult AllModeinfoDetails()
        {
            try
            {
                ModeinfoEntity models = new ModeinfoEntity();
                var jList = GetAllModeinfoDetails(models).Select(c => new { DisplayText = c.Text, Value = c.Value });
                return Json(new { Result = "OK", Options = jList });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        public JsonResult AllDestinationDetails()
        {
            try
            {
                DestinationEntity models = new DestinationEntity();
                var jList = GetAllDestinationDetails(models).Select(c => new { DisplayText = c.Text, Value = c.Value });
                return Json(new { Result = "OK", Options = jList });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        /// <summary>
        /// To Collect Exporter Name with ID.
        /// </summary>
        /// <param name="expid"></param>
        /// <returns></returns>
        public JsonResult GetExporterNameByID(string expid)
        {
            if (expid.ToString().Trim() == "")
            {
                return Json(new { Result = "ERROR", Message = "Enter Exporter ID" });
            }
            else
            {
                try
                {
                    ExporterEntity obj = (ExporterEntity)GetExporterDetails(expid);

                    return Json(obj);
                }
                catch (Exception ex)
                {
                    return Json(new { Result = "ERROR", Message = ex.Message });
                }
            }
        }
        public JsonResult GetConsigneeNameByID(string conid)
        {
            if (conid.ToString().Trim() == "")
            {
                return Json(new { Result = "ERROR", Message = "Enter Consignee ID" });
            }
            else
            {
                try
                {
                    ConsigneeEntity obj = (ConsigneeEntity)GetConsigneeName(conid);

                    return Json(obj);
                }
                catch (Exception ex)
                {
                    return Json(new { Result = "ERROR", Message = ex.Message });
                }
            }
        }
        public JsonResult GetNotifyNameByID(string notid)
        {
            if (notid.ToString().Trim() == "")
            {
                return Json(new { Result = "ERROR", Message = "Enter Notify ID" });
            }
            else
            {
                try
                {
                    NotifypartyEntity obj = (NotifypartyEntity)GetNotifyName(notid);

                    return Json(obj);
                }
                catch (Exception ex)
                {
                    return Json(new { Result = "ERROR", Message = ex.Message });
                }
            }
        }
        public JsonResult GetHSCodeNameByID(string hsid)
        {
            if (hsid.ToString().Trim() == "")
            {
                return Json(new { Result = "ERROR", Message = "Enter Notify ID" });
            }
            else
            {
                try
                {
                    HSCodeEntity obj = (HSCodeEntity)GetHSCodeName(hsid);

                    return Json(obj);
                }
                catch (Exception ex)
                {
                    return Json(new { Result = "ERROR", Message = ex.Message });
                }
            }
        }

        /// <summary>
        /// Report Generate in PDF
        /// </summary>
        /// <returns></returns>
        public ActionResult PDFView(float headspc)
        {
            using(MemoryStream ms = new MemoryStream())
            {
               //Document d = new Document(PageSize.LEGAL, 40f, 1f, 0f, 0f);      //using( Document d = new Document(PageSize.A4, 55, 55, 35, 20))

                Document d = new Document(PageSize.LEGAL);
                d = new Document(new Rectangle(615f, 1044f));        //Width-8.3*72=597.6; Height-14.5*72=1044  ** 72 points to an inch

                   PdfWriter writer = PdfWriter.GetInstance(d, ms);               //using (Document d = new Document(PageSize.Legal, 40, 1, 1, 1))
                   string path = Server.MapPath("~/PDFFiles/");
                   //int headspc = 22;    //22f
                   //var doc1 = new iTextSharp.text.Document();
                   //PdfWriter.GetInstance(doc1, new FileStream(path + "/Doc1.pdf", FileMode.Create));
                   PdfWriter.GetInstance(d, new FileStream(path + "PDFDoc.pdf", FileMode.Create));
                   List<ExportformEntity> ItemList = (List<ExportformEntity>)Session["ExpEntry"];
                   writer.CompressionLevel = 0;
                   d.Open();
                  
                   d.Add(new Paragraph(new Phrase("---")));
                   Paragraph heading = new Paragraph("\n");
                   heading.ExtraParagraphSpace = 100f;
                   heading.SetLeading(0.0f, headspc);   ///20.0f means the Header Spaces..                                                    
                   heading.Add("");
                   d.Add(heading);                   
                   PdfPTable t0 = new PdfPTable(3);
                   t0.TotalWidth = 550f;
                   t0.HorizontalAlignment = Element.ALIGN_LEFT;    //0=Left, 1=Centre, 2=Right                  
                   t0.LockedWidth = true;
                   t0.DefaultCell.Border = Rectangle.NO_BORDER;
                   
                   t0.SpacingBefore = 20f;
                   //t0.SetTotalWidth(new[] { 90f, 55f, 74f, 35f });
                   t0.SetTotalWidth(new[] {245f, 150f, 110f});         //Table cell spaceing
         
                   PdfPCell cell = new PdfPCell(new Paragraph());
                              
                   //t0.DefaultCell.FixedHeight = 100f;      //Table Cell Fix Height.
                   //cell = ConstantApp.PhraseCell(new Phrase(), PdfPCell.ALIGN_CENTER);
                   //cell = ConstantApp.PhraseCell(new Phrase("Hello World", FontFactory.GetFont("Arial", 12, Font.UNDERLINE)), PdfPCell.ALIGN_CENTER);
                   foreach (ExportformEntity dr in ItemList)
                   {
                       //string strname = dr.ShortName;
                       cell=new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White); 
                       t0.AddCell(cell);
                       cell= new PdfPCell(new Phrase(dr.ItemName, new Font(Font.COURIER, 8f, Font.BOLD)));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       cell.FixedHeight = 20f;
                       t0.AddCell(cell);
                       if (dr.HSCodesecond == "")
                       {
                           string hscode = dr.HSCode;
                           string finalStr = Regex.Replace(hscode, @"(.{1})", "$1  ");    /// For Making space between characters in a String.                      
                           cell = new PdfPCell(new Phrase(finalStr, new Font(Font.TIMES_ROMAN, 12f, Font.NORMAL)));
                           //cell = new PdfPCell(new Phrase(dr.HSCode, new Font()));
                           //cell = new PdfPCell(new Phrase(dr.HSCode + "\n" + dr.HSCode, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           cell.PaddingTop = 5f;
                           t0.AddCell(cell);
                       }
                       else 
                       {
                           string hscode = dr.HSCode;
                           string finalStr = Regex.Replace(hscode, @"(.{1})", "$1  ");    /// For Making space between characters in a String.                      
                           cell = new PdfPCell(new Phrase(finalStr, new Font()));
                           string hssecond = dr.HSCodesecond;
                           string secondStr = Regex.Replace(hssecond, @"(.{1})", "$1  ");
                           cell = new PdfPCell(new Phrase(finalStr + "\n" + secondStr, new Font(Font.TIMES_ROMAN, 11f, Font.NORMAL)));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);                           
                           t0.AddCell(cell);
                       }
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell(new Phrase(dr.Name, new Font(Font.TIMES_ROMAN, 10f, Font.NORMAL)));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.CountryCode, new Font()));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);


                       cell=new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell(new Phrase(dr.Port, new Font(Font.TIMES_ROMAN, 10f, Font.NORMAL)));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);

                       //cell=new PdfPCell(new Phrase(" "));  ///For a Blank Row
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);                                   ///
                       //cell=new PdfPCell(new Phrase(" "));  ///For a Blank Row
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);                                           ///
                       //cell=new PdfPCell(new Phrase(" "));  ///For a Blank Row
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);      
                       
                       if (dr.Unit == "55")
                       {
                           string pcs = "PCS";
                           cell = new PdfPCell(new Phrase(pcs, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);                          
                           t0.AddCell(cell);
                           string unit = dr.Unit;
                           string spcunit = Regex.Replace(unit, @"(.{1})", "$1  ");
                           cell = new PdfPCell(new Phrase(spcunit, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           cell.Colspan = 2;
                           cell.PaddingBottom = 10f;
                           t0.AddCell(cell);
                         }

                       //cell = new PdfPCell();
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);                      
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.Quantity, new Font()));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //cell.Colspan = 2;
                       cell.PaddingBottom = 8f;
                       t0.AddCell(cell);

                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       if (dr.Currency == "1")
                       {
                           string usd = "U.S.DOLLAR";
                           cell = new PdfPCell(new Phrase(usd, new Font(Font.TIMES_ROMAN, 10f, Font.NORMAL)));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           t0.AddCell(cell);
                           cell = new PdfPCell(new Phrase("0  "+dr.Currency, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           cell.PaddingBottom = 10f;
                           t0.AddCell(cell);
                         }

                       //cell = new PdfPCell();
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);

                       if (dr.Incoterm == "1")
                       {
                           string fob = "FOB";
                           cell = new PdfPCell(new Phrase(fob, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           cell.PaddingBottom = 16f;
                           t0.AddCell(cell);
                           //cell = new PdfPCell(new Phrase(dr.Incoterm, new Font()));
                           //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           //t0.AddCell(cell);


                           cell = new PdfPCell();
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           t0.AddCell(cell);
                           cell = new PdfPCell();
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           t0.AddCell(cell);

                           //cell=new PdfPCell(new Phrase(" "));   ///For a Blank Row
                           //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           //t0.AddCell(cell);                                            ///
                           //cell=new PdfPCell(new Phrase(" "));   ///For a Blank Row
                           //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           //t0.AddCell(cell);
                           //cell=new PdfPCell(new Phrase(" "));   ///For a Balnk Row
                           //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           //t0.AddCell(cell);
                           cell = new PdfPCell(new Phrase("$" + dr.FOBValue, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           cell.PaddingBottom = 20f;
                           t0.AddCell(cell);
                           cell = new PdfPCell();
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           t0.AddCell(cell);
                       }
                       else 
                       {
                           string cpt = "CPT";
                           cell = new PdfPCell(new Phrase(cpt, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           cell.PaddingBottom = 16f;
                           t0.AddCell(cell);
                           //cell = new PdfPCell(new Phrase(dr.Incoterm, new Font()));
                           //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           //t0.AddCell(cell);


                           cell = new PdfPCell();
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           t0.AddCell(cell);
                           cell = new PdfPCell();
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           t0.AddCell(cell);

                           //cell=new PdfPCell(new Phrase(" "));   ///For a Blank Row
                           //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           //t0.AddCell(cell);                                            ///
                           //cell=new PdfPCell(new Phrase(" "));   ///For a Blank Row
                           //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           //t0.AddCell(cell);
                           //cell=new PdfPCell(new Phrase(" "));   ///For a Balnk Row
                           //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           //t0.AddCell(cell);
                           cell = new PdfPCell(new Phrase("$" + dr.FOBValue, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           cell.PaddingBottom = 20f;
                           t0.AddCell(cell);
                           cell = new PdfPCell(new Phrase("$"+dr.CPTFOBValue+"   "+"$"+dr.Freight, new Font(Font.COURIER, 10f, Font.BOLD)));
                           //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           t0.AddCell(cell);
                       }
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase("$"+dr.CMValue, new Font()));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //cell.PaddingBottom = 8f;
                       t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);


                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.ContractNo, new Font()));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                      // cell.PaddingBottom = 8f;
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.ContractDate, new Font()));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);


                       cell = new PdfPCell();       
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell();      
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);            
                       cell = new PdfPCell(new Phrase(dr.TTNo, new Font(Font.COURIER, 8f, Font.BOLD)));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);                      
                       t0.AddCell(cell);


                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.TTDate, new Font(Font.COURIER, 8f, Font.BOLD)));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //cell.PaddingBottom = 5f;
                       t0.AddCell(cell);


                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       //cell = new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       //cell = new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       //cell = new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);

                       cell = new PdfPCell(new Phrase(dr.ConsigneeName, new Font(Font.TIMES_ROMAN, 10f, Font.NORMAL)));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       cell.FixedHeight = 50f;      //For Make a cell Exact Height.
                       cell.Colspan = 2;            //Remove seperation between two Column.
                       cell.PaddingBottom = 8f;
                       t0.AddCell(cell);

                       //Blank Cell
                       //cell = new PdfPCell();
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);

                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       
                       cell=new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(" "));   ///For a Balnk Row
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);

                       cell = new PdfPCell(new Phrase("                INVOICE NO:"));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.InvoiceNo, new Font()));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);

                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.TName + "                  DATE:"));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.InvoiceDate, new Font()));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       cell.PaddingBottom = 8f;
                       t0.AddCell(cell);

                       //cell = new PdfPCell();
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       //cell=new PdfPCell(new Phrase(dr.TName, new Font()));
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       //cell = new PdfPCell();
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);

                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.TPort, new Font()));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);

                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);


                       cell=new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell = new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);

                       //cell = new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       //cell = new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       //cell = new PdfPCell(new Phrase(" "));   ///For a Blank Row
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);

                       cell = new PdfPCell(new Phrase(dr.ExporterName, new Font(Font.TIMES_ROMAN, 10f, Font.NORMAL)));                       
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       cell.FixedHeight = 55f;      //For Make a cell Exact Height.
                       cell.Colspan = 2;
                       cell.PaddingBottom = 12f;
                       t0.AddCell(cell);

                       ///Blank Cell
                       //cell = new PdfPCell();
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       cell=new PdfPCell(new Phrase(dr.RegDetails, new Font(Font.COURIER, 8f, Font.BOLD)));
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       cell.Colspan = 2;
                       cell.PaddingBottom = 10f;
                       t0.AddCell(cell);

                       ///Blank Cell
                       //cell = new PdfPCell();
                       //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       //t0.AddCell(cell);
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                       if (dr.Section == "2")
                       {
                           string pev = "PRIVATE";
                           cell=new PdfPCell(new Phrase(pev, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           t0.AddCell(cell);
                           cell=new PdfPCell(new Phrase(dr.Section, new Font()));
                           cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                           t0.AddCell(cell);
                       }
                       cell = new PdfPCell();
                       cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                       t0.AddCell(cell);
                   }
                   //t0.AddCell(new PdfPCell(new Phrase("Cell1")));
                   //t0.AddCell(new PdfPCell(new Phrase("Cell2")));
                   //t0.AddCell(new PdfPCell(new Phrase("Cell3")));

                   //cell=new PdfPCell(new Phrase("Cell1"));
                   //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White); 
                   //t0.AddCell(cell);
                   //cell=new PdfPCell(new Phrase("Cell2"));
                   //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);
                   //t0.AddCell(cell);
                   //cell=new PdfPCell(new Phrase("Cell3"));                                    
                   //cell.BorderColor = new iTextSharp.text.Color(System.Drawing.Color.White);     //For text.color itextSharp Version-4.1.6.0 is needed
                   //t0.AddCell(cell);
                  
                
                
                   d.Add(t0);                   
                   d.Add(heading);
                   d.Close();                   
                              
                //return new EmptyResult();     ///Main Retun               
                string Sourcefile = Server.MapPath("~/PDFFiles/");
                var fileStream = new FileStream(Sourcefile + "PDFDoc.pdf", FileMode.Open, FileAccess.Read);
                var fsResult = new FileStreamResult(fileStream, "application/pdf");
                return fsResult;
            }               
           }   
          

    }
}
