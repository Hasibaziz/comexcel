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
    public class AuditController : BaseController
    {
        //
        // GET: /Audit/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult CustomsAuditInfo()
        {
            return View();
        }
        [HttpPost]
        public JsonResult CustomsAuditInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    CustomsAuditEntity _Model = new CustomsAuditEntity();
                    _Model.UserName = CurrentUserName;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetCustomsAuditInfoRecord, _Model);
                    List<CustomsAuditEntity> ItemList = null;
                    ItemList = new List<CustomsAuditEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new CustomsAuditEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                IRegisterNo = dr["IRegisterNo"].ToString(),
                                IBond = dr["IBond"].ToString(),
                                TotalFabric = dr["TotalFabric"].ToString(),
                                AdjustReg = dr["AdjustReg"].ToString(),
                                AdjustRegPage = dr["AdjustRegPage"].ToString()
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

        public ActionResult CustomsAuditDetails()
        {
            return View();
        }
        [HttpPost]
        public JsonResult AuditInvoiceSearchByNo(string invoice = "", int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    SalesreportEntity _Model = new SalesreportEntity();
                    _Model.InvoiceNo = invoice;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAuditInvoiceSearchByNo, _Model);
                    List<SalesreportEntity> ItemList = null;
                    ItemList = new List<SalesreportEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new SalesreportEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),

                                ItemName = dr["ItemName"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),

                                OrderNo = dr["OrderNo"].ToString(),
                                ExporterID = dr["ExporterID"].ToString(),
                                ExporterName = dr["ExporterName"].ToString(),
                                RegDetails = dr["RegDetails"].ToString(),

                                ConsigneeID = dr["ConsigneeID"].ToString(),
                                ConsigneeName = dr["ConsigneeName"].ToString(),

                                DestinationID = dr["DestinationID"].ToString(),
                                CountryCode = dr["CountryCode"].ToString(),
                                Name = dr["Name"].ToString(),

                                TransportID = dr["TransportID"].ToString(),
                                TName = dr["TName"].ToString(),
                                TPort = dr["TPort"].ToString(),
                                FOBValue = dr["FOBValue"].ToString(),
                                CMValue = dr["CMValue"].ToString(),
                                //CPTValue = dr["CPTValue"].ToString(),
                                Freight = dr["Freight"].ToString(),
                                Quantity = dr["Quantity"].ToString(),

                                RevQty = dr["RevQty"].ToString(),
                                RevisedFOBValue = dr["RevisedFOBValue"].ToString(),
                                RevisedCMValue = dr["RevisedCMValue"].ToString(),
                                Incoterm = dr["Incoterm"].ToString(),

                                EXPNo = dr["EXPNo"].ToString(),
                                EXPDate = dr["EXPDate"].ToString(),
                                EPNo = dr["EPNo"].ToString(),
                                EPDate = dr["EPDate"].ToString(),

                                BLNo = dr["BLNo"].ToString(),
                                BLDate = dr["BLDate"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),

                                ExFactoryDate = dr["ExFactoryDate"].ToString()

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

        public JsonResult AuditInvoiceSrcByNo(string invoice)
        {
            try
            {
                SalesreportEntity obj = (SalesreportEntity)AuditSearchByInvoiceNo(invoice);

                return Json(obj);
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        public object AuditSearchByInvoiceNo(string invoice)
        {
            SalesreportEntity _Model = new SalesreportEntity();
            //_Model.InvoiceNo = invoice;

            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAuditSearchByInvoiceNo, invoice);
            foreach (DataRow dr in dt.Rows)
            {
                _Model.ID = dr["ID"].ToString();
                _Model.InvoiceNo = dr["InvoiceNo"].ToString();             

            }
            return _Model;
        }

        [HttpPost]
        public ActionResult CustomsAuditDetails(CustomsAuditEntity _Model)
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
                    if (DuplicateAuditInvoiceNo(_Model.InvoiceNo) != false)
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
                        isUpdate = (bool)ExecuteDB(TestTask.AG_SaveCustomsAuditDetails, _Model);
                        return RedirectToAction("CustomsAuditDetails", "Audit");
                    }
                }
                else if (_Model.ID != null)
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateCustomsAuditDetails, _Model);
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("CustomsAuditInfo", "Audit", addedModel);
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
        public bool DuplicateAuditInvoiceNo(string invoiceno)
        {
            try
            {
                CustomsAuditEntity obj = (CustomsAuditEntity)GetDuplicateAuditInvoiceNo(invoiceno);
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
        public JsonResult CustomsAuditInvoiceSearchByNo( string InvNo, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    CustomsAuditEntity _Model = new CustomsAuditEntity();
                    _Model.InvoiceNo = InvNo;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetCustomsAuditInvoiceSearchByNo, _Model);
                    List<CustomsAuditEntity> ItemList = null;
                    ItemList = new List<CustomsAuditEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new CustomsAuditEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                IRegisterNo = dr["IRegisterNo"].ToString(),
                                IBond = dr["IBond"].ToString(),
                                TotalFabric = dr["TotalFabric"].ToString(),
                                AdjustReg = dr["AdjustReg"].ToString(),
                                AdjustRegPage = dr["AdjustRegPage"].ToString()
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

        public ActionResult CustomsAuditDetailsUpdate()
        {
            return View();
        }

        [HttpGet]
        public ActionResult CustomsAuditDetailsUpdateByInvoiceNo(String ID)
        {
            CustomsAuditEntity _Model = new CustomsAuditEntity();             
            if (ID != null)
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetCustomsAuditDetailsUpdateByInvoiceNo, ID);
                List<CustomsAuditEntity> ItemList = null;
                ItemList = new List<CustomsAuditEntity>();

                foreach (DataRow dr in dt.Rows)
                {
                    _Model.ID = dr["ID"].ToString();
                    _Model.InvoiceNo = dr["InvoiceNo"].ToString();
                    _Model.IRegisterNo = dr["IRegisterNo"].ToString();
                    _Model.IBond = dr["IBond"].ToString();
                    _Model.TotalFabric = dr["TotalFabric"].ToString();
                    _Model.AdjustReg = dr["AdjustReg"].ToString();
                    _Model.AdjustRegPage = dr["AdjustRegPage"].ToString();                   
                }
            }
            else
            {
                return View("CustomsAuditDetails", _Model);
                //return Json(new { Result = "ERROR", Message = "Information failed to Open" });
            }
            //return View("ComsalesEntryUpd", (object)_Model);
            return View("CustomsAuditDetailsUpdate", _Model);
        }

    }
}
