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
                                DeadlineSubmission = dr["DealineSubmission"].ToString(),
                                BillrcvdDate = dr["BillrcvdDate"].ToString(),
                                LStatus = dr["LStatus"].ToString(),
                                ForwarderName = dr["ForwarderName"].ToString()
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


    }
}
