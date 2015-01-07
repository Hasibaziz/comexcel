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

namespace Test.Controllers
{
    public class ConfigurationController : BaseController
    {
        //
        // GET: /Configuration/
        //**-Hasib
        //CTRL + M + O will collapse all.
        //CTRL + M + L will expand all.
        //CTRL + M + P will expand all and disable outlining.
        //CTRL + M + M will collapse/expand the current section.

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ServiceName()
        {
            return View();
        }
        public ActionResult ServiceDetails()
        {
            return View();
        }


        [HttpPost]
        public JsonResult ServiceNameList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllTrServicemasterRecord, null);
                    List<TrServicemasterEntity> ItemList = null;
                    ItemList = new List<TrServicemasterEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new TrServicemasterEntity()
                            {
                                Id = dr["ID"].ToString(),
                                Servicename = dr["Servicename"].ToString(),
                                Description = dr["Description"].ToString()
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
        public JsonResult AddUpdateServiceName(TrServicemasterEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.Id == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveTrServicemasterInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateTrServicemasterInfo, _Model);
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
        [HttpPost]
        public JsonResult DeleteServiceName(string ID)
        {
            try
            {
                Thread.Sleep(50);
                bool isUpdate = false;
                isUpdate = (bool)ExecuteDB(TestTask.AG_DeleteTrServicemasterInfoById, ID);
                if (isUpdate)
                    return Json(new { Result = "OK" });
                else
                    return Json(new { Result = "ERROR", Message = "Failed to Delete" });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        [HttpPost]
        public JsonResult AllServiceNameListItem()
        {
            try
            {
                var jList = GetAllServiceNameListItem().Select(c => new { DisplayText = c.Text, Value = c.Value });
                return Json(new { Result = "OK", Options = jList });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
               
        [HttpPost]
        public JsonResult ServiceNameDetilsList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllTrServicedetailsRecord, null);
                    List<TrServicedetailsEntity> ItemList = null;
                    ItemList = new List<TrServicedetailsEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new TrServicedetailsEntity()
                            {
                                Id = dr["ID"].ToString(),
                                Srvicenameid = dr["Srvicenameid"].ToString(),
                                Detailsname = dr["Detailsname"].ToString(),
                                Govfee = dr["Govfee"].ToString(),
                                Servicefee = dr["Servicefee"].ToString(),
                                Othersfee = dr["Othersfee"].ToString(),
                                Fixedfigure =Convert.ToBoolean( dr["Fixedfigure"].ToString()),
                                Cc = dr["Cc"].ToString(),
                                Sit = dr["Sit"].ToString()
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
        public JsonResult AddUpdateServiceNameDetils(TrServicedetailsEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.Id == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveTrServicedetailsInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateTrServicedetailsInfo, _Model);
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
        [HttpPost]
        public JsonResult DeleteServiceNameDetils(string ID)
        {
            try
            {
                Thread.Sleep(50);
                bool isUpdate = false;
                isUpdate = (bool)ExecuteDB(TestTask.AG_DeleteTrServicedetailsInfoById, ID);
                if (isUpdate)
                    return Json(new { Result = "OK" });
                else
                    return Json(new { Result = "ERROR", Message = "Failed to Delete" });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }


        public ActionResult CategoryName()
        {
            return View();
        }
        [HttpPost]
        public JsonResult CategoryNameList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllCategorymasterRecord, null);
                    List<CategoryEntity> ItemList = null;
                    ItemList = new List<CategoryEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new CategoryEntity()
                            {
                                ID = dr["ID"].ToString(),
                                Name = dr["Name"].ToString()                               
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
        public JsonResult AddUpdateCategoryName(CategoryEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveCategorynameInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateCategorynameInfo, _Model);
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
        [HttpPost]
        public JsonResult AllCategoryNameListItem()
        {
            try
            {
                var jList = GetAllCategoryNameListItem().Select(c => new { DisplayText = c.Text, Value = c.Value });
                return Json(new { Result = "OK", Options = jList });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        public ActionResult CategoryDetails()
        {
            return View();
        }
        [HttpPost]
        public JsonResult CategoryDetailsList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllCategorydetailsRecord, null);
                    List<CategorydetailsEntity> ItemList = null;
                    ItemList = new List<CategorydetailsEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new CategorydetailsEntity()
                            {
                                ID = dr["ID"].ToString(),
                                CategoryID = dr["CategoryID"].ToString(),
                                Item = dr["Item"].ToString()
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
        public JsonResult AddUpdateCategoryDetails(CategorydetailsEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveCategorydetails, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateCategorydetails, _Model);
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


        public ActionResult UDInfo()
        {
            return View();
        }
        [HttpPost]
        public JsonResult UDInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllUDmasterRecord, null);
                    List<UDEntity> ItemList = null;
                    ItemList = new List<UDEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new UDEntity()
                            {
                                ID = dr["ID"].ToString(),
                                UDNo = dr["UDNo"].ToString(),
                                AMDNo = dr["AMDNo"].ToString(),
                                AMDDate = dr["AMDDate"].ToString()
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
        public JsonResult AddUpdateUDInfo(UDEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveUDInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateUDInfo, _Model);
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

        public ActionResult BEInfo()
        {
            return View();
        }
        [HttpPost]
        public JsonResult BEInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllBEMasterRecord, null);
                    List<BEInfoEntity> ItemList = null;
                    ItemList = new List<BEInfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new BEInfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                BENo = dr["BENo"].ToString(),
                                BEDate = dr["BEDate"].ToString()
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
        public JsonResult AddUpdateBEInfo(BEInfoEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveBEInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateBEInfo, _Model);
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
                                Name = dr["Name"].ToString()
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


        public ActionResult ImportExcel()
        {           
            return View();
        }
        [HttpPost]
        public ActionResult ImportExcel(HttpPostedFileBase file, ImportexcelEntity _Model)
        {

            if (Request.Files["FileUpload"].ContentLength > 0)
            {
                string fileExtension =  System.IO.Path.GetExtension(Request.Files["FileUpload"].FileName);

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
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        if (dt.Rows[i][17].ToString() == "")
                        {
                            string Status = string.Format("Update  [{0}] set '" + dt.Rows[i][17].ToString() + "'='Post' where '" + dt.Rows[i][17].ToString() + "'='' ", excelSheets[0]);
                            OleDbDataAdapter dataAdapter = new OleDbDataAdapter(Status, excelConnection1);                            
                        }
                    }
                    

                   ////For Validation the First Row on The Excel File-like Sales Contract.
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {               
                       if (dt.Rows[i][0].ToString() == "")
                        {
                          int RowNo = i + 2;        
                          //ScriptManager.RegisterStartupScript(Page, Page.GetType(), "InvalidArgs", "alert('Please enter Employee ID in row " + RowNo + "');", true);
                          //ViewBag.message = "Please check the Blank Field";                         
                          ModelState.AddModelError("", "Please check the Blank(Sales Contract) in Row- " + RowNo + "");
                          return View();
                          }
                      }

                    bool isUpdate = false;
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        // _Model.ID = ds.Tables[0].Rows[i]["ID"].ToString();
                        _Model.SContract = ds.Tables[0].Rows[i]["SalesContract"].ToString();
                        _Model.UDNo = ds.Tables[0].Rows[i]["U/D No"].ToString();
                        _Model.AMDNo = ds.Tables[0].Rows[i]["AMD No"].ToString();
                        _Model.AMDDate = ds.Tables[0].Rows[i]["AMD DT"].ToString();
                        _Model.Factory = ds.Tables[0].Rows[i]["Factory"].ToString();
                        _Model.Invoice = ds.Tables[0].Rows[i]["Invoice"].ToString();
                        _Model.Category = ds.Tables[0].Rows[i]["Category"].ToString();
                        _Model.Item = ds.Tables[0].Rows[i]["Item"].ToString();
                        _Model.QTY = ds.Tables[0].Rows[i]["QTY"].ToString();
                        _Model.Unit = ds.Tables[0].Rows[i]["Unit"].ToString();
                        _Model.TotalValue = ds.Tables[0].Rows[i]["TotalValue"].ToString();
                        _Model.BENo = ds.Tables[0].Rows[i]["B/E No"].ToString();
                        _Model.BEDate = ds.Tables[0].Rows[i]["B/E Date"].ToString();
                        _Model.Passbook = ds.Tables[0].Rows[i]["Passbook"].ToString();
                        _Model.Pageno = ds.Tables[0].Rows[i]["Pageno"].ToString();
                        _Model.BLNo = ds.Tables[0].Rows[i]["B/L No"].ToString();
                        _Model.Mode = ds.Tables[0].Rows[i]["Mode"].ToString();
                        _Model.ImportDate =  DateTime.Today.ToString();

                        if (_Model.Invoice != null)
                            isUpdate = (bool)ExecuteDB(TestTask.AG_SaveImportexcelRecord, _Model);
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
        public JsonResult AllImportExcelList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllImportExcelRecord, null);
                    List<ImportexcelEntity> ItemList = null;
                    ItemList = new List<ImportexcelEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ImportexcelEntity()
                            {
                                ID = dr["ID"].ToString(),
                                SContract = dr["SContract"].ToString(),
                                UDNo = dr["UDNo"].ToString(),
                                AMDNo = dr["AMDNo"].ToString(),
                                AMDDate = dr["AMDDate"].ToString(),
                                Factory = dr["Location"].ToString(),
                                Invoice = dr["Invoice"].ToString(),
                                Category = dr["Category"].ToString(),
                                Item = dr["Item"].ToString(),
                                QTY = dr["QTY"].ToString(),
                                Unit = dr["Unit"].ToString(),
                                TotalValue = dr["TotalValue"].ToString(),
                                BENo = dr["BENo"].ToString(),
                                BEDate = dr["BEDate"].ToString(),
                                Passbook = dr["Passbook"].ToString(),
                                Pageno = dr["Pageno"].ToString(),
                                BLNo = dr["BLNo"].ToString(),
                                Mode = dr["Mode"].ToString()
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
        public JsonResult DeleteAllImportExcelList(string ID)
        {
            try
            {
                Thread.Sleep(50);
                bool isUpdate = false;
                isUpdate = (bool)ExecuteDB(TestTask.AG_DeleteAllImportExcelListById, ID);
                if (isUpdate)
                    return Json(new { Result = "OK" });
                else
                    return Json(new { Result = "ERROR", Message = "Failed to Delete" });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        public JsonResult Postdata()
        {
            bool result = true;
            ImportexcelEntity _Model = new ImportexcelEntity();
            try
            {
                if (Duplicateheckinv(_Model.Invoice) != false)
                    //return Json(new { Result = "Message", Message = "Invoice already Exists!." });                    
                    return Json(new { result }, JsonRequestBehavior.AllowGet);
                else
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_SetPostdata, null);
                    return Json(new { Result = "OK" });
                }
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
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
        /// <summary>
        /// action for file download
        /// </summary>
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

        public bool Duplicateheckinv(string Pinvoice)
        {
            try
            {
                ImportexcelEntity obj = (ImportexcelEntity)GetDuplicatecheckinv(Pinvoice);
                //var obj1 = GetDupMail(UserID);                
                if (obj.Invoice == null)
                    return false;
                else
                    return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

    }
}
