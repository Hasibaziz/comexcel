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
    public class SalesController : BaseController
    {
        //
        // GET: /Sales/

        public ActionResult Index()
        {
            SalesCarList iModel = new SalesCarList();
            iModel.StartDate = DateTime.Today.Date.ToString("dd/MM/yyyy");
            iModel.EndDate = DateTime.Today.Date.ToString("dd/MM/yyyy");
            return View(iModel);
        }


        [HttpPost]
        public JsonResult jGetSalesList( string StartDate = "", string EndDate = "", int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                CommonEntity iSet = new CommonEntity();
                iSet.StartDate = StartDate;
                iSet.EndDate = EndDate;
                DataTable dt = (DataTable)ExecuteDB(TestTask.MG_GetSaleCarDetailsInfo, iSet);

                List<SalesCarList> ItemList = null;
                ItemList = new List<SalesCarList>();
                
                int iCount = 0;
                int offset = 0;
                offset = jtStartIndex / jtPageSize;
                double dlTrNo = 0;
                foreach (DataRow dr in dt.Rows)
                {
                    if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                    {
                        ItemList.Add(new SalesCarList()
                        {
                            SL = (iCount + 1).ToString(),
                            Id = dr["Id"].ToString(),
                            HaatDate = dr["HaatDate"].ToString(),
                            Regno = dr["RegNo"].ToString(),
                            CarReview = dr["CarDetails"].ToString(),
                            BuyerID = dr["BuyerID"].ToString(),
                            BuyerName = dr["BuyerDetails"].ToString(),
                            TotalDeduct = dr["TotalDeduct"].ToString(),
                            TotalDeposit = dr["TotalDeposit"].ToString(),
                            TotalBuyerPayment = dr["TotalBuyerPayment"].ToString(),
                            TotalBuyerDues = dr["TotalBuyerDues"].ToString()
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

        public ActionResult Export()
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
                    ComsalesinfoEntity _Model = new ComsalesinfoEntity();
                    _Model.UserName = CurrentUserName;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetComsalsesInfoRecord, _Model);
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


        public ActionResult ComsalesEntry()
        {

            return View();
        }

        public ActionResult ComsalesEntryUpd()
        {
            return View();
        }       
      
        [HttpPost]
        public ActionResult ComsalesEntry(ComsalesinfoEntity _Model)
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
                        return RedirectToAction("ComsalesEntry", "Sales");
                    }
                }
                else if (_Model.ID != null)
                {
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateComsalesEntryInfo, _Model);
                    var addedModel = _Model;
                    //return Json(new { Result = "OK", Record = addedModel });
                    return RedirectToAction("ComsalesInfo", "Sales", addedModel);
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
                ComsalesinfoEntity obj = (ComsalesinfoEntity)GetDuplicatesalesInvoiceno(invoiceno);
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
        public JsonResult InvoiceSearchByNo(string Invno, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    var isSuccess = false;
                    var message = "";
                    ExportformEntity _Model = new ExportformEntity();
                    _Model.InvoiceNo = Invno;
                    if (CheckshippingInvoiceNo(Invno) == false)
                    {
                        //return Json(new { Result = "ERROR", Message = "The Invoice Number is already taken. Please choose another." });
                        //return Json(new { result }, JsonRequestBehavior.AllowGet);
                        isSuccess = true;
                        message = "Please Update Shipping Information First!";
                        var jsonData = new { isSuccess, message };
                        return Json(jsonData);
                    }
                    else
                    {
                        DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetSalesEntryInvoiceSearchByNo, _Model);
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
                                    ExFactoryDate = dr["ExFactoryDate"].ToString(),
                                    RTransport = dr["RTransport"].ToString()
                                });
                            }
                            iCount += 1;
                        }
                        var RecordCount = dt.Rows.Count;
                        var Record = ItemList;
                        Session["ExpEntry"] = ItemList;
                        return Json(new { Result = "OK", Records = Record, TotalRecordCount = RecordCount });
                    }
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
        public JsonResult CSalesInvoiceSearchByNo( string InvNo, int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
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
                                TTNo = dr["TTNo"].ToString(),
                                TTDate = dr["TTDate"].ToString(),
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

        public bool CheckshippingInvoiceNo(string invoiceno)
        {
            try
            {
                ShippinginfoEntity obj = (ShippinginfoEntity)GetCheckshippingInvoiceNo(invoiceno);
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

        public JsonResult SalesInvoiceSrcByNo(string invoice)
        {
            try
            {
                ExportformEntity obj = (ExportformEntity)SalesSearchByInvoiceNo(invoice);

                return Json(obj);
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        public object SalesSearchByInvoiceNo(string invoice)
        {
            ExportformEntity _Model = new ExportformEntity();
            //_Model.InvoiceNo = invoice;

            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetSalesSearchByInvoiceNo, invoice);
            foreach (DataRow dr in dt.Rows)
            {
                _Model.ID = dr["ID"].ToString();
                _Model.InvoiceNo = dr["InvoiceNo"].ToString();

            }
            return _Model;
        }

        public ActionResult SalesImportExcel()
        {            
            return View();
        }
        [HttpPost]
        public ActionResult SalesImportExcel(HttpPostedFileBase file, SalesImportExcelEntity _Model)
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
                        _Model.StyleNo = ds.Tables[0].Rows[i]["Style No"].ToString();
                        _Model.BLNo = ds.Tables[0].Rows[i]["BL No"].ToString();
                        _Model.BLDate = ds.Tables[0].Rows[i]["BL Date"].ToString();
                        _Model.ETADate = ds.Tables[0].Rows[i]["ETA Date"].ToString();
                        _Model.ShipbordingDate = ds.Tables[0].Rows[i]["Ship Bording Date"].ToString();
                        _Model.VesselName = ds.Tables[0].Rows[i]["Vessel Name"].ToString();
                       
                        //_Model.ImportDate = DateTime.Today.ToString();

                        if (_Model.InvoiceNo != null)
                            isUpdate = (bool)ExecuteDB(TestTask.AG_SaveSalesImportExcelRecord, _Model);
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

        public ActionResult ExcelFormat()
        {
            var files = from f in System.IO.Directory.GetFiles(
                                Server.MapPath("~/Temp/ExcelFormat/"),
                                "*.*",
                                SearchOption.TopDirectoryOnly)
                        select System.IO.Path.GetFileName(f);
            return View(files);
        }
        public ActionResult Download(string fn)
        {
            string pfn = Server.MapPath("~/Temp/ExcelFormat/" + fn);
            if (!System.IO.File.Exists(pfn))
            {
                throw new ArgumentException("Invalid file name or file not exists!");
            }

            return new BinaryContentResult()
            {
                FileName = fn,
                ContentType = "application/octet-stream",
                Content = System.IO.File.ReadAllBytes(pfn)
            };

        }


        [HttpPost]
        public JsonResult AllSalesImportExcelList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    //SalesImportExcelEntity _Model = new SalesImportExcelEntity();
                    //_Model.UserName = CurrentUserName;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GETAllSalesImportExcelList, null);
                    List<SalesImportExcelEntity> ItemList = null;
                    ItemList = new List<SalesImportExcelEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new SalesImportExcelEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                StyleNo = dr["StyleNo"].ToString(),
                                ShipbordingDate = dr["ShipbordingDate"].ToString(),
                                BLNo = dr["BLNo"].ToString(),
                                BLDate = dr["BLDate"].ToString(),
                                ETADate = dr["ETADate"].ToString(),
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
        public JsonResult SalesPostRecord()
        {
            bool result = true;
            SalesImportExcelEntity _Model = new SalesImportExcelEntity();
            try
            {
                if (DuplicatesalesInvoiceNo(_Model.InvoiceNo) != false)
                    //return Json(new { Result = "Message", Message = "Invoice already Exists!." });                    
                    return Json(new { result }, JsonRequestBehavior.AllowGet);
                else
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GETSalesPostRecord, null);
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
