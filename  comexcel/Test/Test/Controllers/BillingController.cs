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

        public JsonResult InvoiceSrcByNo(string invoice)
        {
            try
            {
                BillingInfoEntity obj = (BillingInfoEntity)GetBillingfromSalesInvoiceno(invoice);

                return Json(obj);
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        public ActionResult BillingImportExcel()
        {
            return View();
        }
        [HttpPost]
        public ActionResult BillingImportExcel(HttpPostedFileBase file, BillingImportExcelEntity _Model)
        {

            if (Request.Files["FileUpload"].ContentLength > 0)
            {
                string fileExtension = System.IO.Path.GetExtension(Request.Files["FileUpload"].FileName);

                if (fileExtension == ".xls" || fileExtension == ".xlsx")
                {

                    // Create a folder in App_Data named ExcelFiles because you need to save the file temporarily location and getting data from there. 
                    string fileLocation = string.Format("{0}/{1}", Server.MapPath("~/Temp"), Request.Files["FileUpload"].FileName);

                    if (System.IO.File.Exists(fileLocation))
                        System.IO.File.Delete(fileLocation);

                    Request.Files["FileUpload"].SaveAs(fileLocation);
                    string excelConnectionString = string.Empty;

                    excelConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileLocation + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
                    //connection String for xls file format.
                    if (fileExtension == ".xls")
                    {
                        excelConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileLocation + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
                    }
                    //connection String for xlsx file format.
                    else if (fileExtension == ".xlsx")
                    {

                        excelConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileLocation + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
                    }

                    //Create Connection to Excel work book and add oledb namespace
                    OleDbConnection excelConnection = new OleDbConnection(excelConnectionString);
                    excelConnection.Open();

                    DataTable dt = new DataTable();

                    dt = excelConnection.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                    if (dt == null)
                    {
                        return null;
                    }

                    String[] excelSheets = new String[dt.Rows.Count];
                    int t = 0;
                    //excel data saves in temp file here.
                    foreach (DataRow row in dt.Rows)
                    {
                        excelSheets[t] = row["TABLE_NAME"].ToString();
                        t++;
                    }
                    OleDbConnection excelConnection1 = new OleDbConnection(excelConnectionString);
                    excelConnection.Close();

                    DataSet ds = new DataSet();

                    string query = string.Format("Select * from [{0}]", excelSheets[0]);    //Range of selection: string cmdText = "SELECT * FROM [w1$A10:B10]";
                    //string DEL = string.Format("DELETE FROM [{0}]", excelSheets[0]); //For Deleting the Data from Excel
                    using (OleDbDataAdapter dataAdapter = new OleDbDataAdapter(query, excelConnection1))
                    {
                        dataAdapter.Fill(ds);
                        dt = ds.Tables[0];
                    }

                    // Putting Status on the Status Field
                    //for (int i = 0; i < dt.Rows.Count; i++)
                    //{
                    //    if (dt.Rows[i][6].ToString() == "")
                    //    {
                    //        string Status = string.Format("Update  [{0}] set '" + dt.Rows[i][6].ToString() + "'='Post' where '" + dt.Rows[i][17].ToString() + "'='' ", excelSheets[0]);
                    //        OleDbDataAdapter dataAdapter = new OleDbDataAdapter(Status, excelConnection1);
                    //    }
                    //}


                    //For Validation the First Row on The Excel File-like Sales Contract.
                    //for (int i = 0; i < dt.Rows.Count; i++)
                    //{
                    //    if (dt.Rows[i][0].ToString() == "")
                    //    {
                    //        int RowNo = i + 1;
                    //        //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "InvalidArgs", "alert('Please enter Employee ID in row " + RowNo + "');", true);
                    //        //ViewBag.message = "Please check the Blank Field";                         
                    //        ModelState.AddModelError("", "Please check the Blank(Invoice NO) in Row- " + RowNo + "");
                    //        return View();
                    //    }
                    //}

                    bool isUpdate = false;
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        // _Model.ID = ds.Tables[0].Rows[i]["ID"].ToString();
                        _Model.InvoiceNo = ds.Tables[0].Rows[i]["Invoice No"].ToString();
                        _Model.CourierNo = ds.Tables[0].Rows[i]["Courier No"].ToString();
                        _Model.CourierDate = ds.Tables[0].Rows[i]["Courier Date"].ToString();
                        //_Model.ETADate = ds.Tables[0].Rows[i]["ETA Date"].ToString();
                        //_Model.ShipbordingDate = ds.Tables[0].Rows[i]["Ship Bording Date"].ToString();
                        //_Model.VesselName = ds.Tables[0].Rows[i]["Vessel Name"].ToString();

                        //_Model.ImportDate = DateTime.Today.ToString();

                        if (_Model.InvoiceNo != null)
                            isUpdate = (bool)ExecuteDB(TestTask.AG_SaveBillingImportExcelRecord, _Model);
                        else
                            ViewBag.message = "Fail to Save Data, Please check the Excel File";
                    }
                    ViewBag.message = "Information saved successfully.";
                    //lblMessage.Text = "Information saved successfully.";
                }
                else
                    ModelState.AddModelError("", "Please select Excel File.");

            }
            return View();
        }
        [HttpPost]
        public JsonResult AllBillingImportExcelList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    //SalesImportExcelEntity _Model = new SalesImportExcelEntity();
                    //_Model.UserName = CurrentUserName;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GETAllBillingImportExcelList, null);
                    List<BillingImportExcelEntity> ItemList = null;
                    ItemList = new List<BillingImportExcelEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new BillingImportExcelEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                CourierNo = dr["CourierNo"].ToString(),
                                CourierDate = dr["CourierDate"].ToString()
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
        public JsonResult BillingPostRecord()
        {
            bool result = true;
            BillingImportExcelEntity _Model = new BillingImportExcelEntity();
            try
            {
                if (DuplicateBillInvoiceNo(_Model.InvoiceNo) != false)
                    //return Json(new { Result = "Message", Message = "Invoice already Exists!." });                    
                    return Json(new { result }, JsonRequestBehavior.AllowGet);
                else
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GETBillingPostRecord, null);
                    return Json(new { Result = "OK" });
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
    }
}
