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


    }
}
