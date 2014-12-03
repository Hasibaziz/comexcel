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
    public class ShippingController : BaseController
    {
        //
        // GET: /Shipping/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult ShippingInfo()
        {
            return View();
        }

        [HttpPost]
        public JsonResult ShippingInfoList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetShippingInfoRecord, null);
                    List<ShippinginfoEntity> ItemList = null;
                    ItemList = new List<ShippinginfoEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new ShippinginfoEntity()
                            {
                                ID = dr["ID"].ToString(),
                                InvoiceNo = dr["InvoiceNo"].ToString(),
                                EPNo = dr["EPNo"].ToString(),
                                EPDate = dr["EPDate"].ToString(),
                                EXPNo = dr["EXPNo"].ToString(),
                                EXPDate = dr["EXPDate"].ToString(),
                                ExFactoryDate = dr["ExFactoryDate"].ToString(),
                                CnFAgent = dr["CnFAgent"].ToString(),

                                TransportID = dr["TransportID"].ToString(),
                                SBNo = dr["SBNo"].ToString(),
                                SBDate = dr["SBDate"].ToString(),
                                VesselNo = dr["VesselNo"].ToString(),
                                CargorptDate = dr["CargorptDate"].ToString()                               
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

        public ActionResult ShippingformEntry()
        {
            return View();
        }
    }
}
