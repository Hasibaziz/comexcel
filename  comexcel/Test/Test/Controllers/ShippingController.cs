using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Domain.Model;
using System.Data;
using Test.Structure;
using Test.Models;


namespace Test.Controllers
{
    public class ShippingController : BaseController
    {
        //
        // GET: /Shipping/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ShippingInfo()
        {
            return View();
        }

        [HttpPost]
        public JsonResult ShippingInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    ShippinginfoEntity _Model = new ShippinginfoEntity();
                    _Model.UserName = CurrentUserName;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetShippingInfoRecord, _Model);
                    List<ShippinginfoEntity> ItemList = null;
                    ItemList = new List<ShippinginfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ShippinginfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                EPNo = dr["EPNo"].ToString(),
                                EPDate = dr["EPDate"].ToString(),
                                EXPNo = dr["EXPNo"].ToString(),
                                EXPDate = dr["EXPDate"].ToString(),
                                ExFactoryDate = dr["ExFactoryDate"].ToString(),
                                CnFAgent = dr["CnFAgent"].ToString(),

                                TransportID = dr["TransportID"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                VesselNo = dr["VesselNo"].ToString(),
                                CargorptDate = dr["CargorptDate"].ToString()                               
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
        public JsonResult ShippingInvoiceSearchByNo(string InvNo, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    ShippinginfoEntity _Model = new ShippinginfoEntity();
                    _Model.InvoiceNo = InvNo;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetShippingInvoiceSearchByNo, _Model);
                    List<ShippinginfoEntity> ItemList = null;
                    ItemList = new List<ShippinginfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ShippinginfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                EPNo = dr["EPNo"].ToString(),
                                EPDate = dr["EPDate"].ToString(),
                                EXPNo = dr["EXPNo"].ToString(),
                                EXPDate = dr["EXPDate"].ToString(),
                                ExFactoryDate = dr["ExFactoryDate"].ToString(),
                                CnFAgent = dr["CnFAgent"].ToString(),

                                TransportID = dr["TransportID"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                VesselNo = dr["VesselNo"].ToString(),
                                CargorptDate = dr["CargorptDate"].ToString()
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

        public ActionResult ShippingformEntry()
        {
            ModeinfoEntity tEntity = new ModeinfoEntity();
            ViewData["Name"] = GetAllModeinfoDetails(tEntity);
            return View();
        }

        [HttpPost]
        public ActionResult ShippingformEntry(ShippinginfoEntity _Model)
        {
            var isSuccess = false;
            var message = "";
            _Model.UserName = CurrentUserName;
            _Model.CurrentDate = DateTime.Now.ToString();
            try
            {
                if (!ModelState.IsValid)
                {
                    isSuccess = true;
                    return Json(new { isSuccess, message = "Form is not valid! Please correct it and try again." });
                    //return View(_Model);
                }
                bool isUpdate = false;
                if (_Model.ID == null)
                {
                    if (DuplicateshipInvoiceNo(_Model.InvoiceNo) != false)
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
                        isUpdate = (bool)ExecuteDB(TestTask.AG_SaveShippingformEntry, _Model);
                        return RedirectToAction("ShippingformEntry", "Shipping");
                    }
                }
                else if (_Model.ID != null)
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateShippingformEntry, _Model);
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("ShippingInfo", "Shipping", addedModel);
                }               
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
        /// Dupliate Invoice Number checking.
        /// </summary>
        /// <param name="invoiceno"></param>
        /// <returns></returns>
        public bool DuplicateshipInvoiceNo(string invoiceno)
        {
            try
            {
                ShippinginfoEntity obj = (ShippinginfoEntity)GetDuplicateshipInvoiceNo(invoiceno);
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

        [HttpPost]
        public JsonResult InvoiceSearchByNo(string Invno, string consigneeid, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    ExportformEntity _Model = new ExportformEntity();
                    _Model.InvoiceNo = Invno;
                    _Model.ConsigneeID = consigneeid;
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
                                //ID = dr["ID"].ToString(),
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

        public ActionResult ShippingformEntryUpd()
        {
            ModeinfoEntity tEntity = new ModeinfoEntity();
            ViewData["Name"] = GetAllModeinfoDetails(tEntity);
            return View();
        }
        [HttpGet]
        public ActionResult ShippingformEntryUpdByInvoiceNo(String ID)
        {
            ShippinginfoEntity _Model = new ShippinginfoEntity();
            ModeinfoEntity tEntity = new ModeinfoEntity();
            ViewData["Name"] = GetAllModeinfoDetails(tEntity);
            if (ID != null)
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetShippingformEntryUpdByInvoiceNo, ID);
                List<ShippinginfoEntity> ItemList = null;
                ItemList = new List<ShippinginfoEntity>();

                foreach (DataRow dr in dt.Rows)
                {
                    _Model.ID = dr["ID"].ToString();
                    _Model.InvoiceNo = dr["InvoiceNo"].ToString();
                    _Model.EPNo = dr["EPNo"].ToString();
                    _Model.EPDate = dr["EPDate"].ToString();
                    _Model.EXPNo = dr["EXPNo"].ToString();
                    _Model.EXPDate = dr["EXPDate"].ToString();

                    _Model.ExFactoryDate = dr["ExFactoryDate"].ToString();
                    _Model.CnFAgent = dr["CnFAgent"].ToString();

                    _Model.TransportID = dr["TransportID"].ToString();
                    _Model.SBNo = dr["SBNo"].ToString();

                    _Model.SBDate = dr["SBDate"].ToString();
                    _Model.VesselNo = dr["VesselNo"].ToString();
                    _Model.CargorptDate = dr["CargorptDate"].ToString();                   
                }
            }
            else
            {
                return View("ShippingformEntry", _Model);
                //return Json(new { Result = "ERROR", Message = "Information failed to Open" });
            }
            //return View("ComsalesEntryUpd", (object)_Model);
            return View("ShippingformEntryUpd", _Model);
        }

        public ActionResult ShippingMonitor()
        {
            ConsigneeEntity conEntity = new ConsigneeEntity();
            ViewData["ConsigneeNo"] = GetAllConsigneeDetails(conEntity);
            return View();
        }

        [HttpPost]
        public JsonResult ShippingMonitorInvoiceSearchByNo(string Invno, string consigneeid, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    ExportformEntity _Model = new ExportformEntity();
                    _Model.InvoiceNo = Invno;
                    _Model.ConsigneeID = consigneeid;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetShippingMonitorInvoiceSearchByNo, _Model);
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

                                ExpNo = dr["ExpNo"].ToString(),
                                ExpDate = dr["ExpDate"].ToString(),
                                EPNo = dr["EPNo"].ToString(),                                
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


    }
}
