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
    public class BillingController : BaseController
    {
        //
        // GET: /Billing/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult BillingInfo()
        {
            return View();
        }
        [HttpPost]
        public JsonResult BillingInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    BillingInfoEntity _Model = new BillingInfoEntity();
                    _Model.UserName = CurrentUserName;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetBillingInfoRecord, _Model);
                    List<BillingInfoEntity> ItemList = null;
                    ItemList = new List<BillingInfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new BillingInfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                DocSubmitDate = dr["DocSubmitDate"].ToString(),
                                CourierNo = dr["CourierNo"].ToString(),
                                CourierDate = dr["CourierDate"].ToString(),
                                BuyerCourierNo = dr["BuyerCourierNo"].ToString(),

                                BuyerCourierDate = dr["BuyerCourierDate"].ToString(),
                                LeadTime = dr["LeadTime"].ToString(),
                                BankSubmitDate = dr["BankSubmitDate"].ToString()
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

        public ActionResult BillingEntry()
        {
            return View();
        }
        [HttpPost]
        public ActionResult BillingEntry(BillingInfoEntity _Model)
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
                    if (DuplicateBillInvoiceNo(_Model.InvoiceNo) != false)
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
                        isUpdate = (bool)ExecuteDB(TestTask.AG_SaveBillinginfoEntry, _Model);
                        return RedirectToAction("BillingEntry", "Billing");
                    }
                }
                else if (_Model.ID != null)
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateBillinginfoEntry, _Model);
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("BillingInfo", "Billing", addedModel);
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
        public bool DuplicateBillInvoiceNo(string invoiceno)
        {
            try
            {
                BillingInfoEntity obj = (BillingInfoEntity)GetDuplicateBillInvoiceNo(invoiceno);
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

        public ActionResult BillingEntryUpdate()
        {
            return View();
        }

        [HttpGet]
        public ActionResult BillingEntryUpdateByInvoiceNo(String ID)
        {
            BillingInfoEntity _Model = new BillingInfoEntity();           
            if (ID != null)
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetBillingEntryUpdateByInvoiceNo, ID);
                List<BillingInfoEntity> ItemList = null;
                ItemList = new List<BillingInfoEntity>();

                foreach (DataRow dr in dt.Rows)
                {
                    _Model.ID = dr["ID"].ToString();
                    _Model.InvoiceNo = dr["InvoiceNo"].ToString();
                    _Model.SBNo = dr["SBNo"].ToString();
                    _Model.SBDate = dr["SBDate"].ToString();
                    _Model.DocSubmitDate = dr["DocSubmitDate"].ToString();
                    _Model.CourierNo = dr["CourierNo"].ToString();
                    _Model.CourierDate = dr["CourierDate"].ToString();
                    _Model.BuyerCourierNo = dr["BuyerCourierNo"].ToString();
                    _Model.BuyerCourierDate = dr["BuyerCourierDate"].ToString();
                    _Model.LeadTime = dr["LeadTime"].ToString();                    
                    _Model.BankSubmitDate = dr["BankSubmitDate"].ToString();
                    
                }
            }
            else
            {
                return View("BillingEntry", _Model);
                //return Json(new { Result = "ERROR", Message = "Information failed to Open" });
            }
            //return View("ComsalesEntryUpd", (object)_Model);
            return View("BillingEntryUpdate", _Model);
        }

        [HttpPost]
        public JsonResult BillingInvoiceSearchByNo(string InvNo, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    BillingInfoEntity _Model = new BillingInfoEntity();
                    _Model.InvoiceNo = InvNo;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetBillingInvoiceSearchByNo, _Model);
                    List<BillingInfoEntity> ItemList = null;
                    ItemList = new List<BillingInfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new BillingInfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                DocSubmitDate = dr["DocSubmitDate"].ToString(),
                                CourierNo = dr["CourierNo"].ToString(),
                                CourierDate = dr["CourierDate"].ToString(),
                                BuyerCourierNo = dr["BuyerCourierNo"].ToString(),

                                BuyerCourierDate = dr["BuyerCourierDate"].ToString(),
                                LeadTime = dr["LeadTime"].ToString(),
                                BankSubmitDate = dr["BankSubmitDate"].ToString()
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
