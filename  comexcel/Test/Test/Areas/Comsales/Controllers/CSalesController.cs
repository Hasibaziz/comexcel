using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using Test.Structure;
using Test.Domain.Model;
using Test.Controllers;

namespace Test.Areas.Comsales.Controllers
{
    public class CSalesController : BaseController
    {
        //
        // GET: /Comsales/CSales/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ComsalesInfo()
        {
            return View();
        }
        [HttpPost]
        public JsonResult ComsalsesInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetComsalsesInfoRecord, null);
                    List<ComsalesinfoEntity> ItemList = null;
                    ItemList = new List<ComsalesinfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ComsalesinfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                OrderNo = dr["OrderNo"].ToString(),
                                ProductType = dr["ProductType"].ToString(),
                                StyleNo = dr["StyleNo"].ToString(),
                                ShipbordingDate = dr["ShipbordingDate"].ToString(),
                                BLNo = dr["BLNo"].ToString(),
                                BLDate = dr["BLDate"].ToString(),

                                ETADate = dr["ETADate"].ToString(),
                                RevQty = dr["RevQty"].ToString(),
                                RevisedFOBValue = dr["RevisedFOBValue"].ToString(),
                                RevisedCMValue = dr["RevisedCMValue"].ToString(),
                                CartonQty = dr["CartonQty"].ToString(),
                                CBMValue = dr["CBMValue"].ToString(),
                                //TTLCTN = dr["TTLCTN"].ToString(),
                                VesselName = dr["VesselName"].ToString()       
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

        public ActionResult ComsalesEntry()
        {
            return View();
        }
        public ActionResult ComsalesEntryUpd()
        {
            return View();
        }
        [HttpGet]
        public ActionResult ComsalesEntryUpdByInvoiceNo(String ID)
        {
            ComsalesinfoEntity _Model = new ComsalesinfoEntity();
            if (ID != null)
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetSalesUpdateByInvoiceNo, ID);
                List<ComsalesinfoEntity> ItemList = null;
                ItemList = new List<ComsalesinfoEntity>();

                foreach (DataRow dr in dt.Rows)
                {
                    _Model.ID = dr["ID"].ToString();
                    _Model.InvoiceNo = dr["InvoiceNo"].ToString();
                    _Model.OrderNo = dr["OrderNo"].ToString();
                    _Model.StyleNo = dr["StyleNo"].ToString();
                    _Model.ProductType = dr["ProductType"].ToString();
                    _Model.ShipbordingDate = dr["ShipbordingDate"].ToString();

                    _Model.BLNo = dr["BLNo"].ToString();
                    _Model.BLDate = dr["BLDate"].ToString();

                    _Model.ETADate = dr["ETADate"].ToString();
                    _Model.RevQty = dr["RevQty"].ToString();

                    _Model.RevisedFOBValue = dr["RevisedFOBValue"].ToString();
                    _Model.RevisedCMValue = dr["RevisedCMValue"].ToString();
                    _Model.CartonQty = dr["CartonQty"].ToString();
                    _Model.CBMValue = dr["CBMValue"].ToString();
                    //_Model.TTLCTN = dr["TTLCTN"].ToString();
                    _Model.VesselName = dr["VesselName"].ToString();       
                }
            }
            else
            {
                return View("ComsalesEntry", _Model);
                //return Json(new { Result = "ERROR", Message = "Information failed to Open" });
            }
            //return View("ComsalesEntryUpd", (object)_Model);
            return View("ComsalesEntryUpd", _Model);            
        }



        [HttpPost]
        public ActionResult ComsalesEntry(ComsalesinfoEntity _Model)
        {
            var isSuccess = false;
            var message = "";
            _Model.UserName = CurrentUserName;
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
                    if (DuplicatesalesInvoiceNo(_Model.InvoiceNo) != false)
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
                        isUpdate = (bool)ExecuteDB(TestTask.AG_SaveComsalesEntryInfo, _Model);
                        return RedirectToAction("ComsalesEntry", "CSales");
                    }
                }
                else if (_Model.ID != null)
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateComsalesEntryInfo, _Model);
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("ComsalesInfo", "CSales", addedModel);
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
        public bool DuplicatesalesInvoiceNo(string invoiceno)
        {
            try
            {
                ExportformEntity obj = (ExportformEntity)GetDuplicatesalesInvoiceno(invoiceno);
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

        [HttpPost]
        public JsonResult CSalesInvoiceSearchByNo(string InvNo, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    ComsalesinfoEntity _Model = new ComsalesinfoEntity();
                    _Model.InvoiceNo = InvNo;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetCSalesInvoiceSearchByNo, _Model);
                    List<ComsalesinfoEntity> ItemList = null;
                    ItemList = new List<ComsalesinfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ComsalesinfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                OrderNo = dr["OrderNo"].ToString(),
                                ProductType = dr["ProductType"].ToString(),
                                StyleNo = dr["StyleNo"].ToString(),
                                ShipbordingDate = dr["ShipbordingDate"].ToString(),
                                BLNo = dr["BLNo"].ToString(),
                                BLDate = dr["BLDate"].ToString(),

                                ETADate = dr["ETADate"].ToString(),
                                RevQty = dr["RevQty"].ToString(),
                                RevisedFOBValue = dr["RevisedFOBValue"].ToString(),
                                RevisedCMValue = dr["RevisedCMValue"].ToString(),
                                CartonQty = dr["CartonQty"].ToString(),
                                CBMValue = dr["CBMValue"].ToString(),
                                //TTLCTN = dr["TTLCTN"].ToString(),
                                VesselName = dr["VesselName"].ToString()
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
       

    }
}
