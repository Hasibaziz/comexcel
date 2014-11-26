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
                                ExFactoryDate = dr["ExFactoryDate"].ToString(),
                                CargorptDate = dr["CargorptDate"].ToString(),
                                ShipbordingDate = dr["ShipbordingDate"].ToString(),
                                SailinExBDDate = dr["SailinExBDDate"].ToString(),
                                BLNo = dr["BLNo"].ToString(),
                                BLDate = dr["BLDate"].ToString(),
                                DocsendingDate = dr["DocsendingDate"].ToString(),

                                ETADate = dr["ETADate"].ToString(),
                                UnitPrice = dr["UnitPrice"].ToString(),
                                RevQty = dr["UnitPrice"].ToString(),
                                RevisedFOBValue = dr["RevisedValue"].ToString(),
                                RevisedCMValue = dr["RevisedCMValue"].ToString(),
                                CartonQty = dr["CartonQty"].ToString(),
                                CBMValue = dr["CBMValue"].ToString(),
                                ExpNo = dr["ExpNo"].ToString(),
                                ExpDate = dr["ExpDate"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                EPNo = dr["EPNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                VesselNo = dr["VesselNo"].ToString(),
                                VesselContractNo = dr["VesselContractNo"].ToString(),
                                AirFreightCost = dr["AirFreightCost"].ToString(),
                                Agent = dr["Agent"].ToString(),
                                Remarks = dr["Remarks"].ToString()
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

        [HttpPost]
        public JsonResult ComsalesEntry(ComsalesinfoEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveComsalesEntryInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateComsalesEntryInfo, _Model);
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
       
       

    }
}
