using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using Test.Domain.Model;
using Test.Structure;
using Test.Controllers;

namespace Test.Areas.Admin.Controllers
{
    public class GSPController : BaseController
    {
        //
        // GET: /Admin/GSP/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GSPItemInfo()
        {
            return View();
        }
        [HttpPost]
        public JsonResult GSPItemInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllGSPItemInfoRecord, null);
                    List<GSPItemInfoEntity> ItemList = null;
                    ItemList = new List<GSPItemInfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new GSPItemInfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                OrderNo = dr["OrderNo"].ToString(),
                                ItemDetails = dr["ItemDetails"].ToString(),
                                StyleNo = dr["StyleNo"].ToString(),
                                TAGIDNo = dr["TAGIDNo"].ToString(),
                                OurID = dr["OurID"].ToString(),
                                ARTNo = dr["ARTNo"].ToString(),
                                CustomerPO = dr["CustomerPO"].ToString(),
                                Delivery = dr["Delivery"].ToString(),
                                Category = dr["Category"].ToString(),
                                Origion = dr["Origion"].ToString(),
                                Quantity = dr["Quantity"].ToString()
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

        public ActionResult GSPItemEntry()
        {
            TranshipmentEntity tnsEntity = new TranshipmentEntity();
            ViewData["CountryName"] = GetAllTranshipmentDetails(tnsEntity);
            return View();
        }
        [HttpPost]
        public ActionResult GSPItemEntry(GSPItemInfoEntity _Model)
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
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveGSPItemInfoRecord, _Model);
                    return RedirectToAction("GSPItemEntry", "GSP");
                }
                else
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateGSPItemInfoRecord, _Model);
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("GSPItemInfo", "GSP", addedModel);
                }
                if (isUpdate)
                {
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("GSPItemInfo", "GSP", addedModel);
                }
                else
                {
                    isSuccess = true;
                    message = "ERROR! Information failed to save";
                    var ERRORMSG = new { isSuccess, message };
                    return Json(ERRORMSG);
                    //return Json(new { Result = "ERROR", Message = "Information failed to save" });
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });

            }
        }

        /// <summary>
        /// GST Form Details Information and Entry ******///
        /// </summary>
        /// <returns></returns>

        public ActionResult GSPFormInfo()
        {
            ConsigneeEntity conEntity = new ConsigneeEntity();
            ViewData["ConsigneeNo"] = GetAllConsigneeDetails(conEntity);
            return View();
        }
        [HttpPost]
        public JsonResult GSPFormInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllGSPFormInfoRecord, null);
                    List<GSPformDetailsEntity> ItemList = null;
                    ItemList = new List<GSPformDetailsEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new GSPformDetailsEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                                ExporterNo = dr["ExporterNo"].ToString(),
                                ExporterName = dr["ExporterName"].ToString(),
                                EPBReg = dr["EPBReg"].ToString(),

                                ConsigneeNo = dr["ConsigneeNo"].ToString(),
                                ConsigneeName = dr["ConsigneeName"].ToString(),
                                Country = dr["Country"].ToString(),

                                TName = dr["TName"].ToString(),
                                VesselNo = dr["VesselNo"].ToString(),
                                VesselContractNo = dr["VesselContractNo"].ToString(),

                                CartonNo = dr["CartonNo"].ToString(),
                                ItemDetails = dr["ItemDetails"].ToString(),
                                OrderNo = dr["OrderNo"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),
                                MasterContractNo = dr["MasterContractNo"].ToString(),
                                MasterContractDate = dr["MasterContractDate"].ToString(),
                                BuyerContractNo = dr["BuyerContractNo"].ToString(),
                                BuyerContractDate = dr["BuyerContractDate"].ToString(),
                                StyleNo = dr["StyleNo"].ToString(),
                                TAGIDNo = dr["TAGIDNo"].ToString(),
                                OurID = dr["OurID"].ToString(),
                                ARTNo = dr["ARTNo"].ToString(),
                                CustomerPO = dr["CustomerPO"].ToString(),
                                Delivery = dr["Delivery"].ToString(),


                                Category = dr["Category"].ToString(),

                                BLNo = dr["BLNo"].ToString(),
                                BLDate = dr["BLDate"].ToString(),
                                ExpNo = dr["ExpNo"].ToString(),
                                ExpDate = dr["ExpDate"].ToString(),

                                BKMEANo = dr["BKMEANo"].ToString(),
                                BINNo = dr["BINNo"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                Origion = dr["Origion"].ToString(),
                                Quantity = dr["Quantity"].ToString(),
                                BCode = dr["BCode"].ToString(),
                                Itemnumber = dr["Itemnumber"].ToString()
                            });
                        }
                        iCount += 1;
                    }
                    var RecordCount = dt.Rows.Count;
                    var Record = ItemList;
                    //Session["GSPRecords"] = ItemList;
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
        public JsonResult GSPFormSearchByInvoiceno(string Invno, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    GSPformDetailsEntity _Model = new GSPformDetailsEntity();
                    _Model.InvoiceNo = Invno;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetGSPFormSearchByInvoiceno, _Model);
                    List<GSPformDetailsEntity> ItemList = null;
                    ItemList = new List<GSPformDetailsEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new GSPformDetailsEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                                ExporterNo = dr["ExporterNo"].ToString(),
                                ExporterName = dr["ExporterName"].ToString(),
                                EPBReg = dr["EPBReg"].ToString(),

                                ConsigneeNo = dr["ConsigneeNo"].ToString(),
                                ConsigneeName = dr["ConsigneeName"].ToString(),
                                Country = dr["Country"].ToString(),

                                TName = dr["TName"].ToString(),
                                VesselNo = dr["VesselNo"].ToString(),
                                VesselContractNo = dr["VesselContractNo"].ToString(),

                                CartonNo = dr["CartonNo"].ToString(),
                                ItemDetails = dr["ItemDetails"].ToString(),
                                OrderNo = dr["OrderNo"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),
                                MasterContractNo = dr["MasterContractNo"].ToString(),
                                MasterContractDate = dr["MasterContractDate"].ToString(),
                                BuyerContractNo = dr["BuyerContractNo"].ToString(),
                                BuyerContractDate = dr["BuyerContractDate"].ToString(),
                                StyleNo = dr["StyleNo"].ToString(),
                                TAGIDNo = dr["TAGIDNo"].ToString(),
                                OurID = dr["OurID"].ToString(),
                                ARTNo = dr["ARTNo"].ToString(),
                                CustomerPO = dr["CustomerPO"].ToString(),
                                Delivery = dr["Delivery"].ToString(),


                                Category = dr["Category"].ToString(),

                                BLNo = dr["BLNo"].ToString(),
                                BLDate = dr["BLDate"].ToString(),
                                ExpNo = dr["ExpNo"].ToString(),
                                ExpDate = dr["ExpDate"].ToString(),

                                BKMEANo = dr["BKMEANo"].ToString(),
                                BINNo = dr["BINNo"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                Origion = dr["Origion"].ToString(),
                                Quantity = dr["Quantity"].ToString(),
                                BCode = dr["BCode"].ToString(),
                                Itemnumber = dr["Itemnumber"].ToString()
                            });
                        }
                        iCount += 1;
                    }
                    var RecordCount = dt.Rows.Count;
                    var Record = ItemList;
                    Session["GSPRecords"] = ItemList;
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

        public ActionResult GSPFormDetails()
        {
            ModeinfoEntity tEntity = new ModeinfoEntity();
            ViewData["Name"] = GetAllModeinfoDetails(tEntity);
            return View();
        }
        [HttpPost]
        public ActionResult GSPFormDetails(GSPformDetailsEntity _Model)
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
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveGSPFormDetailsRecord, _Model);
                    return RedirectToAction("GSPFormDetails", "GSP");
                }
                else
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateGSPFormDetailsRecord, _Model);
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("GSPFormInfo", "GSP", addedModel);
                }
                if (isUpdate)
                {
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("GSPFormDetails", "GSP", addedModel);
                }
                else
                {
                    isSuccess = true;
                    message = "ERROR! Information failed to save";
                    var ERRORMSG = new { isSuccess, message };
                    return Json(ERRORMSG);
                    //return Json(new { Result = "ERROR", Message = "Information failed to save" });
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });

            }
        }

        public ActionResult GSPFormItemInfo()
        {
            ConsigneeEntity conEntity = new ConsigneeEntity();
            ViewData["ConsigneeNo"] = GetAllConsigneeDetails(conEntity);
            return View();
        }
        [HttpPost]
        public JsonResult GSPFormItemInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllGSPFormItemInfoRecord, null);
                    List<GSPformDetailsEntity> ItemList = null;
                    ItemList = new List<GSPformDetailsEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new GSPformDetailsEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                                ExporterNo = dr["ExporterNo"].ToString(),
                                ExporterName = dr["ExporterName"].ToString(),
                                EPBReg = dr["EPBReg"].ToString(),

                                ConsigneeNo = dr["ConsigneeNo"].ToString(),
                                ConsigneeName = dr["ConsigneeName"].ToString(),
                                Country = dr["Country"].ToString(),

                                TName = dr["TName"].ToString(),
                                VesselNo = dr["VesselNo"].ToString(),
                                VesselContractNo = dr["VesselContractNo"].ToString(),

                                CartonNo = dr["CartonNo"].ToString(),
                                ItemDetails = dr["ItemDetails"].ToString(),
                                OrderNo = dr["OrderNo"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),
                                MasterContractNo = dr["MasterContractNo"].ToString(),
                                MasterContractDate = dr["MasterContractDate"].ToString(),
                                BuyerContractNo = dr["BuyerContractNo"].ToString(),
                                BuyerContractDate = dr["BuyerContractDate"].ToString(),
                                StyleNo = dr["StyleNo"].ToString(),
                                TAGIDNo = dr["TAGIDNo"].ToString(),
                                OurID = dr["OurID"].ToString(),
                                ARTNo = dr["ARTNo"].ToString(),
                                CustomerPO = dr["CustomerPO"].ToString(),
                                Delivery = dr["Delivery"].ToString(),


                                Category = dr["Category"].ToString(),

                                BLNo = dr["BLNo"].ToString(),
                                BLDate = dr["BLDate"].ToString(),
                                ExpNo = dr["ExpNo"].ToString(),
                                ExpDate = dr["ExpDate"].ToString(),

                                BKMEANo = dr["BKMEANo"].ToString(),
                                BINNo = dr["BINNo"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                Origion = dr["Origion"].ToString(),
                                Quantity = dr["Quantity"].ToString(),
                                BCode = dr["BCode"].ToString(),
                                Itemnumber = dr["Itemnumber"].ToString()
                            });
                        }
                        iCount += 1;
                    }
                    var RecordCount = dt.Rows.Count;
                    var Record = ItemList;
                    //Session["GSPRecords"] = ItemList;
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
