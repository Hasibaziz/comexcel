using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using Test.Domain.Model;
using Test.Structure;
using System.Text;
using System.IO;
using OfficeOpenXml;
using Test.Utility;
using OfficeOpenXml.Style;
using System.Diagnostics;


namespace Test.Controllers
{
    public class ReportController : BaseController
    {
        //
        // GET: /Report/

        public ActionResult Index()
        {
            ViewData["PageHeader"] = ".";
            return View();
        }

        public ActionResult Invoice()
        {
            ImportexcelEntity impEntity = new ImportexcelEntity();
            ViewData["Name"] = GetAllCategoryName(impEntity);
            ImportexcelEntity item = new ImportexcelEntity();
            ViewData["ID"] = GetAllItemName(item);
            return View();
        }
        [HttpPost]
        public JsonResult AllInvoiceList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllCategoriesRecord, null);
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
                                Invoice = dr["Invoice"].ToString(),
                                Category = dr["Category"].ToString(),
                                Item = dr["Item"].ToString(),
                                QTY = dr["QTY"].ToString(),
                                Unit = dr["Unit"].ToString(),
                                TotalValue = dr["TotalValue"].ToString(),
                                Mode = dr["Mode"].ToString(),
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
        public JsonResult AllInvoiceBycatname(ImportexcelEntity _Model, string invoice = "", string CatName = "", string SDate="", string EDate="", int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    _Model.Invoice = invoice;
                    _Model.Category = CatName;
                    _Model.StartDate = SDate;
                    _Model.EndDate = EDate;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllInvoiceBycatname, _Model);
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
                                Invoice = dr["Invoice"].ToString(),
                                Category = dr["Category"].ToString(),
                                Item = dr["Item"].ToString(),
                                QTY = dr["QTY"].ToString(),
                                Unit = dr["Unit"].ToString(),
                                TotalValue = dr["TotalValue"].ToString(),
                                Mode = dr["Mode"].ToString(),
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

        public JsonResult Getqtytotalval(string categoryname, string invoice, string SDate="", string EDate="")
        {
            //if ((invoice.ToString() == "") || (categoryname.ToString() == ""))
            //{
            //    return Json(new { Result = "ERROR", Message = "Enter Invoice or Category Name" });
            //}
            //else
            //{            
                try
                {
                        ImportexcelEntity obj = (ImportexcelEntity)GetqtytotalvalueRecord(categoryname, invoice, SDate, EDate);
                        return Json(obj);                   
                }
                catch (Exception ex)
                {
                    return Json(new { Result = "ERROR", Message = ex.Message });
                }
           // }
        }

        public ActionResult AllUDInfo()
        {
            LocationEntity locEntity = new LocationEntity();
            ViewData["Location"]=GetALLlocation(locEntity);
            return View();
        }
        [HttpPost]
        public JsonResult AllUDInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllUDInfoListRecord, null);
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
                                Mode = dr["Mode"].ToString(),
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

        public JsonResult GetItemByCategoryID(string CategoryName)
        {
            try
            {
                return Json(GetItemList(CategoryName));
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }

        public ActionResult InvoiceExcelReport(string EX1 = "", string EX2 = "")
        {
            // DataTable dt = -- > get your data
            ImportexcelEntity _Model = new ImportexcelEntity();
            _Model.Invoice = EX1;
            _Model.Category = EX2;

            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllInvoiceBycatnameexcel, _Model);
            Test.Utility.Excelimport.ExcelFileResult actionResult = new Test.Utility.Excelimport.ExcelFileResult(dt) { FileDownloadName = "InvoiceWithItem.xls" };
            return actionResult;
        }

        /// <summary>
        /// Sales Report and the Entity is SalesreportEntity;
        /// </summary>
        /// <returns></returns>
        public ActionResult Salesreport()
        {
            return View();
        }

        [HttpPost]
        public JsonResult SalesreportList(string StartDate = "", string EndDate = "", string CatName = "", string SDate = "", string EDate = "", int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    SalesreportEntity _Model = new SalesreportEntity();
                    _Model.StartDate = StartDate;
                    _Model.EndDate = EndDate;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllSalesreportRecord, _Model);
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
                               // ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),

                                //ItemName = dr["ItemName"].ToString(),
                                ContractNo = dr["ContractNo"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),

                                OrderNo = dr["OrderNo"].ToString(),
                                //ExporterID = dr["ExporterID"].ToString(),
                                ExporterNo = dr["ExporterNo"].ToString(),                                
                                //ExporterName = dr["ExporterName"].ToString(),                                
                                //RegDetails = dr["RegDetails"].ToString(),

                                //ConsigneeID = dr["ConsigneeID"].ToString(),
                                ConsigneeNo = dr["ConsigneeNo"].ToString(),
                                //ConsigneeName = dr["ConsigneeName"].ToString(),

                                //DestinationID = dr["DestinationID"].ToString(),
                                CountryCode = dr["CountryCode"].ToString(),
                                Name = dr["Name"].ToString(),

                                //TransportID = dr["TransportID"].ToString(),
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
                    Session["SALESRPT"] = ItemList;
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
        
        public ActionResult SalesExcelReport(string EX1 = "", string EX2 = "")
        {
            // DataTable dt = -- > get your data
            SalesreportEntity _Model = new SalesreportEntity();
            //_Model.Invoice = EX1;
            //_Model.Category = EX2;          


            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllSalesreportRecord, _Model);
            Test.Utility.Excelimport.ExcelFileResult actionResult = new Test.Utility.Excelimport.ExcelFileResult(dt) { FileDownloadName = "SalesReport.xls" };
            return actionResult;
        }
        
        public ActionResult ExcelReport(string EX1 = "", string EX2 = "")
        {
            SalesreportEntity _Model = new SalesreportEntity();
            _Model.StartDate = EX1;
            _Model.EndDate = EX2;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllSalesreportRecord, _Model);
            StringBuilder sb = new StringBuilder();
            sb.Append("<table border='" + "2px" + "'b>");

            ////For Header
            sb.Append("<td><td><td><b><font face=Arial size=2>" + "Sales Report" + "</font></b></td></td></td>");
            //write column headings
            sb.Append("<tr>");

            foreach (System.Data.DataColumn dc in dt.Columns)
            {
                sb.Append("<td><b><font face=Arial size=2>" + dc.ColumnName + "</font></b></td>");
            }
            sb.Append("</tr>");

            foreach (System.Data.DataRow dr in dt.Rows)
            {
                sb.Append("<tr>");
                foreach (System.Data.DataColumn dc in dt.Columns)
                {
                    sb.Append("<td><font face=Arial size=" + "14px" + ">" + dr[dc].ToString() + "</font></td>");
                }
                sb.Append("</tr>");
            }
            ////For Footer
            sb.Append("<tr>");
            sb.Append("<tr>");
            sb.Append("<td>");
            sb.Append("<td>");
            sb.Append("<td>");
            sb.Append("<td>");
            sb.Append("<td><b><font face=Arial size=2>" + "Powered By: Hasib, IT Department" + "</font></b></td>");
            sb.Append("</td>");
            sb.Append("</td>");
            sb.Append("</td>");
            sb.Append("</tr>");
            sb.Append("</tr>");
            sb.Append("</table>");

            HttpContext.Response.AddHeader("content-disposition", "attachment; filename=SalesReport" + "_" + DateTime.Now.ToString("dd-MMM-yy") + ".xls");
            this.Response.ContentType = "application/vnd.ms-excel";
            //HttpContext.Current.Response.ContentType = "Application/x-msexcel"
            //this.Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";            
            byte[] buffer = System.Text.Encoding.UTF8.GetBytes(sb.ToString());
            //return File(buffer, "application/vnd.ms-excel", "SalesReport.xls");
            //return File(buffer, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "SalesReport.xlsx");
            return File(buffer, "application/vnd.ms-excel");

            //var service = new ExcelService();
            //var stream=service.
            //var memoryStream = stream as MemoryStream;
            //Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            //Response.AddHeader=("content-disposition","attachment; filename=ExcelDemo.xlsx");
            //Response.BinaryWrite(MemoryStream.ToArray());
        }

        public ActionResult SalesReport01(string EX1 = "", string EX2 = "")
        {
            SalesreportEntity _Model = new SalesreportEntity();
            _Model.StartDate = EX1;
            _Model.EndDate = EX2;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllSalesreportRecord, _Model);
            //Excelimport.GenerateReport(dt);
            //return View();  
            return Excelimport.GenerateReportExcel(dt);
        }
        
        public ActionResult CustomsAuditReport()
        {
            return View();
        }
        [HttpPost]
        public JsonResult CustomsAuditReportList(string invoice = "", string CatName = "", string SDate = "", string EDate = "", int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetCustomsAuditReportRecord, null);
                    List<CustomsAuditReportEntity> ItemList = null;
                    ItemList = new List<CustomsAuditReportEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new CustomsAuditReportEntity()
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
                                //FOBValue = dr["FOBValue"].ToString(),
                                //CMValue = dr["CMValue"].ToString(),
                               
                                //Freight = dr["Freight"].ToString(),
                                //Quantity = dr["Quantity"].ToString(),

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

                                IRegisterNo = dr["IRegisterNo"].ToString(),
                                IBond = dr["IBond"].ToString(),
                                TotalFabric = dr["TotalFabric"].ToString(),
                                AdjustReg = dr["AdjustReg"].ToString(),
                                AdjustRegPage = dr["AdjustRegPage"].ToString(),


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



        public ActionResult BillingReport()
        {
            return View();
        }
        [HttpPost]
        public JsonResult BillingReportList(string courierno = "", string StartDate = "", string EndDate = "", int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    ReportBillinInfoEntity _Model = new ReportBillinInfoEntity();
                    _Model.CourierNo = courierno;
                    _Model.StartDate = StartDate;
                    _Model.EndDate = EndDate;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllBillingReportRecord, _Model);
                    List<ReportBillinInfoEntity> ItemList = null;
                    ItemList = new List<ReportBillinInfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ReportBillinInfoEntity()
                            {
                                // ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),

                                //ItemName = dr["ItemName"].ToString(),
                                CONTRACTNO = dr["CONTRACTNO"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),

                                ORDERNO = dr["ORDERNO"].ToString(),
                                //ExporterID = dr["ExporterID"].ToString(),
                                ExporterNo = dr["ExporterNo"].ToString(),
                                //ExporterName = dr["ExporterName"].ToString(),
                                //RegDetails = dr["RegDetails"].ToString(),

                                //ConsigneeID = dr["ConsigneeID"].ToString(),
                                BUYERNAME = dr["BUYERNAME"].ToString(),
                                //ConsigneeName = dr["ConsigneeName"].ToString(),

                                //DestinationID = dr["DestinationID"].ToString(),
                                CountryCode = dr["CountryCode"].ToString(),
                                DESTINATION = dr["DESTINATION"].ToString(),

                                //TransportID = dr["TransportID"].ToString(),
                                TName = dr["TName"].ToString(),
                                MODE = dr["MODE"].ToString(),
                                FOBValue = dr["FOBValue"].ToString(),
                                CMValue = dr["CMValue"].ToString(),
                                //CPTValue = dr["CPTValue"].ToString(),
                                Freight = dr["Freight"].ToString(),
                                Quantity = dr["Quantity"].ToString(),

                                QtyPCS = dr["QtyPCS"].ToString(),
                                FOBValueUSD = dr["FOBValueUSD"].ToString(),
                                CMValueUSD = dr["CMValueUSD"].ToString(),
                                Incoterm = dr["Incoterm"].ToString(),

                                EXPNo = dr["EXPNo"].ToString(),
                                EXPDate = dr["EXPDate"].ToString(),
                                //EPNo = dr["EPNo"].ToString(),
                                //EPDate = dr["EPDate"].ToString(),

                                BLAWBNO = dr["BLAWBNO"].ToString(),
                                BLAWBDate = dr["BLAWBDate"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                ModeStatus = dr["ModeStatus"].ToString(),
                                CourierNo = dr["CourierNo"].ToString(),
                                CourierDate = dr["CourierDate"].ToString(),   

                                ExFactoryDate = dr["ExFactoryDate"].ToString()

                            });
                        }
                        iCount += 1;
                    }
                    var RecordCount = dt.Rows.Count;
                    var Record = ItemList;
                    Session["SALESRPT"] = ItemList;
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

        public ActionResult BillingReportOnExcel(string Courier = "", string StartDate = "", string EndDate = "")
        {

            ReportBillinInfoEntity _Model = new ReportBillinInfoEntity();
            _Model.CourierNo = Courier;
            _Model.StartDate = StartDate;
            _Model.EndDate = EndDate;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllBillingReportRecord, _Model);
            StringBuilder sb = new StringBuilder();
            sb.Append("<table border='" + "2px" + "'b>");

            ////For Header
            sb.Append("<td><td><td><b><font face=Arial size=2>" + "Billing Report" + "</font></b></td></td></td>");
            //write column headings
            sb.Append("<tr>");

            foreach (System.Data.DataColumn dc in dt.Columns)
            {
                sb.Append("<td><b><font face=Arial size=2>" + dc.ColumnName + "</font></b></td>");
            }
            sb.Append("</tr>");

            foreach (System.Data.DataRow dr in dt.Rows)
            {
                sb.Append("<tr>");
                foreach (System.Data.DataColumn dc in dt.Columns)
                {
                    sb.Append("<td><font face=Arial size=" + "14px" + ">" + dr[dc].ToString() + "</font></td>");
                }
                sb.Append("</tr>");
            }
            ////For Footer
            sb.Append("<tr>");
            sb.Append("<tr>");
            sb.Append("<td>");
            sb.Append("<td>");
            sb.Append("<td>");
            sb.Append("<td>");
            sb.Append("<td><b><font face=Arial size=2>" + "Powered By: Hasib, IT Department" + "</font></b></td>");
            sb.Append("</td>");
            sb.Append("</td>");
            sb.Append("</td>");
            sb.Append("</tr>");
            sb.Append("</tr>");
            sb.Append("</table>");

            //this.Response.ContentType = "application/vnd.ms-excel";
            //byte[] buffer = System.Text.Encoding.UTF8.GetBytes(sb.ToString());
            //return File(buffer, "application/vnd.ms-excel", "BillingReport.xls");

            HttpContext.Response.AddHeader("content-disposition", "attachment; filename=BillingReport" + "_" + DateTime.Now.ToString("dd-MMM-yy") + ".xls");
            this.Response.ContentType = "application/vnd.ms-excel";
            //this.Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";            
            byte[] buffer = System.Text.Encoding.UTF8.GetBytes(sb.ToString());
            //return File(buffer, "application/vnd.ms-excel", "SalesReport.xls");
            //return File(buffer, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "SalesReport.xlsx");
            return File(buffer, "application/vnd.ms-excel");

        }

        //public ActionResult BillingReportOnExcel(string Courier = "", string StartDate = "", string EndDate = "")
        //{
        //    ReportBillinInfoEntity _Model = new ReportBillinInfoEntity();
        //    _Model.CourierNo = Courier;
        //    _Model.StartDate = StartDate;
        //    _Model.EndDate = EndDate;
        //    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllBillingReportRecord, _Model);
        //    return Excelimport.GenerateReportExcel(dt);
        //}


        public ActionResult InvoiceMonitor()
        {
            return View();
        }

        [HttpPost]
        public JsonResult InvoiceMonitorList(string StartDate = "", string EndDate = "", int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    ReportBillinInfoEntity _Model = new ReportBillinInfoEntity();
                    _Model.StartDate = StartDate;
                    _Model.EndDate = EndDate;
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetInvoiceMonitorListRecords, _Model);
                    List<ReportBillinInfoEntity> ItemList = null;
                    ItemList = new List<ReportBillinInfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ReportBillinInfoEntity()
                            {                               
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                InvoiceDate = dr["InvoiceDate"].ToString(),
                               
                                CONTRACTNO = dr["CONTRACTNO"].ToString(),
                                ContractDate = dr["ContractDate"].ToString(),

                                ORDERNO = dr["ORDERNO"].ToString(),                                
                                ExporterNo = dr["ExporterNo"].ToString(),                                

                               
                                BUYERNAME = dr["BUYERNAME"].ToString(),
                                //ConsigneeName = dr["ConsigneeName"].ToString(),
                               
                                CountryCode = dr["CountryCode"].ToString(),
                                DESTINATION = dr["DESTINATION"].ToString(),
                                HSCode = dr["HSCode"].ToString(),
                               
                                TName = dr["TName"].ToString(),
                                MODE = dr["MODE"].ToString(),
                                FOBValue = dr["FOBValue"].ToString(),
                                CMValue = dr["CMValue"].ToString(),                                
                                Freight = dr["Freight"].ToString(),
                                Quantity = dr["Quantity"].ToString(),

                                QtyPCS = dr["QtyPCS"].ToString(),
                                FOBValueUSD = dr["FOBValueUSD"].ToString(),
                                CMValueUSD = dr["CMValueUSD"].ToString(),
                                Incoterm = dr["Incoterm"].ToString(),

                                EXPNo = dr["EXPNo"].ToString(),
                                EXPDate = dr["EXPDate"].ToString(),
                                //EPNo = dr["EPNo"].ToString(),
                                //EPDate = dr["EPDate"].ToString(),

                                BLAWBNO = dr["BLAWBNO"].ToString(),
                                BLAWBDate = dr["BLAWBDate"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                ModeStatus = dr["ModeStatus"].ToString(),

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

        public ActionResult InvoiceMonitorExcel(string EX1 = "", string EX2 = "")
        {

            ReportBillinInfoEntity _Model = new ReportBillinInfoEntity();
            _Model.StartDate = EX1;
            _Model.EndDate = EX2;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetInvoiceMonitorListRecords, _Model);
            StringBuilder sb = new StringBuilder();
            sb.Append("<table border='" + "2px" + "'b>");

            ////For Header
            sb.Append("<td><td><td><b><font face=Arial size=2>" + "Inventory Monitor Report" + "</font></b></td></td></td>");
            //write column headings
            sb.Append("<tr>");

            foreach (System.Data.DataColumn dc in dt.Columns)
            {
                sb.Append("<td><b><font face=Arial size=2>" + dc.ColumnName + "</font></b></td>");
            }
            sb.Append("</tr>");

            foreach (System.Data.DataRow dr in dt.Rows)
            {
                sb.Append("<tr>");
                foreach (System.Data.DataColumn dc in dt.Columns)
                {
                    sb.Append("<td><font face=Arial size=" + "14px" + ">" + dr[dc].ToString() + "</font></td>");
                }
                sb.Append("</tr>");
            }
            ////For Footer
            sb.Append("<tr>");
            sb.Append("<tr>");
            sb.Append("<td>");
            sb.Append("<td>");
            sb.Append("<td>");
            sb.Append("<td>");
            sb.Append("<td><b><font face=Arial size=2>" + "Powered By: Hasib, IT Department" + "</font></b></td>");
            sb.Append("</td>");
            sb.Append("</td>");
            sb.Append("</td>");
            sb.Append("</tr>");
            sb.Append("</tr>");
            sb.Append("</table>");

            //this.Response.ContentType = "application/vnd.ms-excel";
            //byte[] buffer = System.Text.Encoding.UTF8.GetBytes(sb.ToString());
            //return File(buffer, "application/vnd.ms-excel", "InventoryRecordsReport.xls");

            //HttpContext.Response.AddHeader("content-disposition", "attachment; filename=PO NO_" + PurchaseOrder.Id + "_" + DateTime.Now.ToString("dd-MMM-yy") + ".xls");
            HttpContext.Response.AddHeader("content-disposition", "attachment; filename=InvoiceRecords" + "_" + DateTime.Now.ToString("dd-MMM-yy") + ".xls");
            this.Response.ContentType = "application/vnd.ms-excel";
            //this.Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";            
            byte[] buffer = System.Text.Encoding.UTF8.GetBytes(sb.ToString());
            //return File(buffer, "application/vnd.ms-excel", "SalesReport.xls");
            //return File(buffer, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "SalesReport.xlsx");
            return File(buffer, "application/vnd.ms-excel");
        }

        //public ActionResult InvoiceMonitorExcel(string EX1 = "", string EX2 = "")
        //{
        //    ReportBillinInfoEntity _Model = new ReportBillinInfoEntity();
        //    _Model.StartDate = EX1;
        //    _Model.EndDate = EX2;
        //    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetInvoiceMonitorListRecords, _Model);
        //    return Excelimport.GenerateReportExcel(dt);
        //}
     }
}
