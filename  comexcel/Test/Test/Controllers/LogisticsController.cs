using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Domain.Model;
using System.Data;
using Test.Structure;
using Test.Models;
using System.Data.OleDb;
using System.IO;
using Test.Utility;

namespace Test.Controllers
{
    public class LogisticsController : BaseController
    {
        //
        // GET: /Logistics/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult LogisticsInfo()
        {
            return View();
        }
        [HttpPost]
        public JsonResult LogisticsInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    LogisticsInfoEntity _Model = new LogisticsInfoEntity();
                    _Model.UserName = CurrentUserName;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetLogisticsInfoRecord, _Model);
                    List<LogisticsInfoEntity> ItemList = null;
                    ItemList = new List<LogisticsInfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new LogisticsInfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                ReceitableAmount = dr["ReceitableAmount"].ToString(),
                                DocProcessFee = dr["DocProcessFee"].ToString(),
                                SSCertificateFee = dr["SSCertificateFee"].ToString(),
                                SealLockCharge = dr["SealLockCharge"].ToString(),
                                AgencyCommission = dr["AgencyCommission"].ToString(),
                                DocumentaionCharge = dr["DocumentaionCharge"].ToString(),

                                TransportationCharge = dr["TransportationCharge"].ToString(),
                                FactoryLoadingFee = dr["FactoryLoadingFee"].ToString(),
                                ForwarderWHUFee = dr["ForwarderWHUFee"].ToString(),
                                DemurrageDUNLoadingFee = dr["DemurrageDUNLoadingFee"].ToString(),
                                CFSMixedCargoLoadingFee = dr["CFSMixedCargoLoadingFee"].ToString(),
                                CustomsMiscCharge = dr["CustomsMiscCharge"].ToString(),
                                CustomsRemarkCharge = dr["CustomsRemarkCharge"].ToString(),
                                CargoHODate = dr["CargoHODate"].ToString(),
                                DeadlineSubmission = dr["DeadlineSubmission"].ToString(),
                                BillrcvdDate = dr["BillrcvdDate"].ToString(),
                                LStatus = dr["LStatus"].ToString(),
                                ForwarderName = dr["ForwarderName"].ToString(),
                                TotalFees = dr["TotalFees"].ToString()
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

        public ActionResult LogisticsEntry()
        {
            return View();
        }

        public ActionResult LogisticsUpdate()
        {
            return View();
        }


        [HttpPost]
        public ActionResult LogisticsEntry(LogisticsInfoEntity _Model)
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
                    if (DuplicateLogisticInvoiceNo(_Model.InvoiceNo) != false)
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
                        isUpdate = (bool)ExecuteDB(TestTask.AG_SaveLogisticsEntryInfo, _Model);
                        return RedirectToAction("LogisticsEntry", "Logistics");
                    }
                }
                else if (_Model.ID != null)
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateLogisticsEntryInfo, _Model);
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("LogisticsInfo", "Logistics", addedModel);
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
        public bool DuplicateLogisticInvoiceNo(string invoiceno)
        {
            try
            {
                LogisticsInfoEntity obj = (LogisticsInfoEntity)GetDuplicateLogisticInvoiceNo(invoiceno);
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

        [HttpGet]
        public ActionResult LogisticsEntryUpdByInvoiceNo(String ID)
        {
            LogisticsInfoEntity _Model = new LogisticsInfoEntity();
            if (ID != null)
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetLogisticsUpdateByInvoiceNo, ID);
                List<LogisticsInfoEntity> ItemList = null;
                ItemList = new List<LogisticsInfoEntity>();

                foreach (DataRow dr in dt.Rows)
                {
                    _Model.ID = dr["ID"].ToString();
                    _Model.InvoiceNo = dr["InvoiceNo"].ToString();
                    _Model.ReceitableAmount = dr["ReceitableAmount"].ToString();
                    _Model.DocProcessFee = dr["DocProcessFee"].ToString();
                    _Model.SSCertificateFee = dr["SSCertificateFee"].ToString();
                    _Model.SealLockCharge = dr["SealLockCharge"].ToString();

                    _Model.AgencyCommission = dr["AgencyCommission"].ToString();
                    _Model.DocumentaionCharge = dr["DocumentaionCharge"].ToString();

                    _Model.TransportationCharge = dr["TransportationCharge"].ToString();
                    _Model.FactoryLoadingFee = dr["FactoryLoadingFee"].ToString();

                    _Model.ForwarderWHUFee = dr["ForwarderWHUFee"].ToString();
                    _Model.DemurrageDUNLoadingFee = dr["DemurrageDUNLoadingFee"].ToString();
                    _Model.CFSMixedCargoLoadingFee = dr["CFSMixedCargoLoadingFee"].ToString();
                    _Model.CustomsMiscCharge = dr["CustomsMiscCharge"].ToString();
                    _Model.CustomsRemarkCharge = dr["CustomsRemarkCharge"].ToString();
                    _Model.CargoHODate = dr["CargoHODate"].ToString();

                    _Model.DeadlineSubmission = dr["DeadlineSubmission"].ToString();
                    _Model.BillrcvdDate = dr["BillrcvdDate"].ToString();
                    _Model.LStatus = dr["LStatus"].ToString();
                    _Model.ForwarderName = dr["ForwarderName"].ToString();
                    _Model.TotalFees = dr["TotalFees"].ToString();
                }
            }
            else
            {
                return View("LogisticsEntry", _Model);
                //return Json(new { Result = "ERROR", Message = "Information failed to Open" });
            }
            //return View("ComsalesEntryUpd", (object)_Model);
            return View("LogisticsUpdate", _Model);
        }

        [HttpPost]
        public JsonResult LogisticsInvoiceSearchByNo(string InvNo, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    LogisticsInfoEntity _Model = new LogisticsInfoEntity();
                    _Model.InvoiceNo = InvNo;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetLogisticsInvoiceSearchByNo, _Model);
                    List<LogisticsInfoEntity> ItemList = null;
                    ItemList = new List<LogisticsInfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new LogisticsInfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                ReceitableAmount = dr["ReceitableAmount"].ToString(),
                                DocProcessFee = dr["DocProcessFee"].ToString(),
                                SSCertificateFee = dr["SSCertificateFee"].ToString(),
                                SealLockCharge = dr["SealLockCharge"].ToString(),
                                AgencyCommission = dr["AgencyCommission"].ToString(),
                                DocumentaionCharge = dr["DocumentaionCharge"].ToString(),

                                TransportationCharge = dr["TransportationCharge"].ToString(),
                                FactoryLoadingFee = dr["FactoryLoadingFee"].ToString(),
                                ForwarderWHUFee = dr["ForwarderWHUFee"].ToString(),
                                DemurrageDUNLoadingFee = dr["DemurrageDUNLoadingFee"].ToString(),
                                CFSMixedCargoLoadingFee = dr["CFSMixedCargoLoadingFee"].ToString(),
                                CustomsMiscCharge = dr["CustomsMiscCharge"].ToString(),
                                CustomsRemarkCharge = dr["CustomsRemarkCharge"].ToString(),
                                CargoHODate = dr["CargoHODate"].ToString(),
                                DeadlineSubmission = dr["DeadlineSubmission"].ToString(),
                                BillrcvdDate = dr["BillrcvdDate"].ToString(),
                                LStatus = dr["LStatus"].ToString(),
                                ForwarderName = dr["ForwarderName"].ToString(),
                                TotalFees = dr["TotalFees"].ToString()
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
