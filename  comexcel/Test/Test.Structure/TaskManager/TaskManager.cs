using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Test.Server.BLL;

namespace Test.Structure.TaskManager
{
    internal class TestTaskManager
    {
        public object Execute(string methodName, object param)
        {
            switch (methodName)
            {
                case TestTask.MG_GetSaleCarDetailsInfo:
                    CommonBLL commonBLL = null;
                    commonBLL = new CommonBLL();
                    return commonBLL.GetSaleCarDetailsInfo(param);
                    break;

                #region Auto Generated - TR_ServiceMaster
                case TestTask.AG_SaveTrServicemasterInfo:
                    TrServicemasterBLL trServicemasterBLL = null;
                    trServicemasterBLL = new TrServicemasterBLL();
                    return trServicemasterBLL.SaveTrServicemasterInfo(param);
                    break;
                case TestTask.AG_UpdateTrServicemasterInfo:
                    trServicemasterBLL = new TrServicemasterBLL();
                    return trServicemasterBLL.UpdateTrServicemasterInfo(param);
                    break;
                case TestTask.AG_DeleteTrServicemasterInfoById:
                    trServicemasterBLL = new TrServicemasterBLL();
                    return trServicemasterBLL.DeleteTrServicemasterInfoById(param);
                    break;
                case TestTask.AG_GetAllTrServicemasterRecord:
                    trServicemasterBLL = new TrServicemasterBLL();
                    return trServicemasterBLL.GetAllTrServicemasterRecord(param);
                    break;
                case TestTask.AG_GetSingleTrServicemasterRecordById:
                    trServicemasterBLL = new TrServicemasterBLL();
                    return trServicemasterBLL.GetSingleTrServicemasterRecordById(param);
                    break;
                #endregion

                #region Auto Generated - TR_ServiceDetails
                case TestTask.AG_SaveTrServicedetailsInfo:
                    TrServicedetailsBLL trServicedetailsBLL = null;
                    trServicedetailsBLL = new TrServicedetailsBLL();
                    return trServicedetailsBLL.SaveTrServicedetailsInfo(param);
                    break;
                case TestTask.AG_UpdateTrServicedetailsInfo:
                    trServicedetailsBLL = new TrServicedetailsBLL();
                    return trServicedetailsBLL.UpdateTrServicedetailsInfo(param);
                    break;
                case TestTask.AG_DeleteTrServicedetailsInfoById:
                    trServicedetailsBLL = new TrServicedetailsBLL();
                    return trServicedetailsBLL.DeleteTrServicedetailsInfoById(param);
                    break;
                case TestTask.AG_GetAllTrServicedetailsRecord:
                    trServicedetailsBLL = new TrServicedetailsBLL();
                    return trServicedetailsBLL.GetAllTrServicedetailsRecord(param);
                    break;
                case TestTask.AG_GetSingleTrServicedetailsRecordById:
                    trServicedetailsBLL = new TrServicedetailsBLL();
                    return trServicedetailsBLL.GetSingleTrServicedetailsRecordById(param);
                    break;
                #endregion

                #region Auto Generated - CategoryName
                case TestTask.AG_SaveCategorynameInfo:
                    CategorynameBLL categorynameBLL = null;
                    categorynameBLL = new CategorynameBLL();
                    return categorynameBLL.SaveCategoryName(param);
                    break;
                case TestTask.AG_UpdateCategorynameInfo:
                    categorynameBLL = new CategorynameBLL();
                    return categorynameBLL.UpdateCategoryName(param);
                    break;
                //case TestTask.AG_DeleteTrServicedetailsInfoById:
                //    trServicedetailsBLL = new TrServicedetailsBLL();
                //    return trServicedetailsBLL.DeleteTrServicedetailsInfoById(param);
                //    break;
                case TestTask.AG_GetAllCategorymasterRecord:
                    categorynameBLL = new CategorynameBLL();
                    return categorynameBLL.GetAllCategorymasterRecord(param);
                    break;
                case TestTask.AG_GetAllCategorynameRecord:
                    categorynameBLL = new CategorynameBLL();
                    return categorynameBLL.GetAllCategorynameRecord(param);
                    break;
                case TestTask.AG_GetcategorynamebyID:
                    categorynameBLL = new CategorynameBLL();
                    return categorynameBLL.GetcategorynamebyID(param);
                    break;
                #endregion

                #region Auto Generated - LocationList
                case TestTask.AG_GetLocationbyID:
                    LocationInfoBLL locBLL = null;
                    locBLL = new LocationInfoBLL();
                    return locBLL.GetLocationbyID(param);
                    break;               
                #endregion

                #region Auto Generated - CategoryDetails
                case TestTask.AG_GetAllCategorydetailsRecord:
                    CategorydetailsBLL categorydetailsBLL = null;
                    categorydetailsBLL = new CategorydetailsBLL();
                    return categorydetailsBLL.GetAllCategorydetailsRecord(param);
                    break;
                case TestTask.AG_SaveCategorydetails:
                    categorydetailsBLL = new CategorydetailsBLL();
                    return categorydetailsBLL.SaveCategorydetails(param);
                    break;
                //case TestTask.AG_UpdateCategorydetails:
                //    categorydetailsBLL = new CategorydetailsBLL();
                //    return categorydetailsBLL.UpdateCategorydetails(param);
                //    break;
                //case TestTask.AG_DeleteTrServicemasterInfoById:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.DeleteTrServicemasterInfoById(param);
                //    break;
                //case TestTask.AG_GetAllTrServicemasterRecord:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.GetAllTrServicemasterRecord(param);
                //    break;
                //case TestTask.AG_GetSingleTrServicemasterRecordById:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.GetSingleTrServicemasterRecordById(param);
                //    break;
                #endregion

                #region Auto Generated - UDInformation
                case TestTask.AG_GetAllUDmasterRecord:
                     UDInformationBLL udinfoBLL = null;
                     udinfoBLL = new UDInformationBLL();
                     return udinfoBLL.GetAllUDmasterRecord(param);
                    break;
                case TestTask.AG_SaveUDInfo:
                    udinfoBLL = new UDInformationBLL();
                    return udinfoBLL.SaveUDInfo(param);
                    break;
                //case TestTask.AG_UpdateCategorydetails:
                //    categorydetailsBLL = new CategorydetailsBLL();
                //    return categorydetailsBLL.UpdateCategorydetails(param);
                //    break;
                //case TestTask.AG_DeleteTrServicemasterInfoById:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.DeleteTrServicemasterInfoById(param);
                //    break;
                //case TestTask.AG_GetAllTrServicemasterRecord:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.GetAllTrServicemasterRecord(param);
                //    break;
                //case TestTask.AG_GetSingleTrServicemasterRecordById:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.GetSingleTrServicemasterRecordById(param);
                //    break;
                #endregion

                #region Auto Generated - UDInformation
                case TestTask.AG_GetAllBEMasterRecord:
                    BEInfoBLL beinfoBLL = null;
                    beinfoBLL = new BEInfoBLL();
                    return beinfoBLL.GetAllBEMasterRecord(param);
                    break;
                case TestTask.AG_SaveBEInfo:
                    beinfoBLL = new BEInfoBLL();
                    return beinfoBLL.SaveBEInfo(param);
                    break;
                //case TestTask.AG_UpdateCategorydetails:
                //    categorydetailsBLL = new CategorydetailsBLL();
                //    return categorydetailsBLL.UpdateCategorydetails(param);
                //    break;
                //case TestTask.AG_DeleteTrServicemasterInfoById:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.DeleteTrServicemasterInfoById(param);
                //    break;
                //case TestTask.AG_GetAllTrServicemasterRecord:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.GetAllTrServicemasterRecord(param);
                //    break;
                //case TestTask.AG_GetSingleTrServicemasterRecordById:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.GetSingleTrServicemasterRecordById(param);
                //    break;
                #endregion

                #region Auto Generated - ModeInformation
                case TestTask.AG_GetAllModemasterRecord:
                    ModeinfoBLL modeinfoBLL = null;
                    modeinfoBLL = new ModeinfoBLL();
                    return modeinfoBLL.GetAllModemasterRecord(param);
                    break;
                case TestTask.AG_SaveModeInfo:
                    modeinfoBLL = new ModeinfoBLL();
                    return modeinfoBLL.SaveModeInfo(param);
                    break;
                case TestTask.AG_GetAllModeinfoDetails:
                    modeinfoBLL = new ModeinfoBLL();
                    return modeinfoBLL.GetAllModeinfoDetails(param);
                    break;
                //case TestTask.AG_DeleteTrServicemasterInfoById:
                //    trServicemasterBLL = new TrServicemasterBLL();
                //    return trServicemasterBLL.DeleteTrServicemasterInfoById(param);
                //    break;
                #endregion

                #region Auto Generated - ImportExcelRecord
                case TestTask.AG_SaveImportexcelRecord:
                    ImportexcelBLL importexcelBLL = null;
                    importexcelBLL = new ImportexcelBLL();
                    return importexcelBLL.SaveImportexcelRecordsp(param);
                    break;
                case TestTask.AG_GetAllImportExcelRecord:
                    importexcelBLL = new ImportexcelBLL();
                    return importexcelBLL.GetAllImportExcelRecord(param);
                    break;
                case TestTask.AG_DeleteAllImportExcelListById:
                    importexcelBLL = new ImportexcelBLL();
                    return importexcelBLL.DeleteAllImportExcelListById(param);
                    break;
                case TestTask.AG_SetPostdata:
                    importexcelBLL = new ImportexcelBLL();
                    return importexcelBLL.SetPostdata(param);
                    break;
                case TestTask.AG_Duplicateheckinv:
                    importexcelBLL = new ImportexcelBLL();
                    return importexcelBLL.Duplicateheckinv(param);
                    break;
                case TestTask.AG_GetAllIteminfo:
                    importexcelBLL = new ImportexcelBLL();
                    return importexcelBLL.GetAllIteminfo(param);
                    break;
                case TestTask.AG_GetItemByCategoryID:
                    importexcelBLL = new ImportexcelBLL();
                    return importexcelBLL.GetItemByCategoryID(param);
                    break;
                #endregion

                #region Auto Generated - InventoryList
                case TestTask.AG_GetAllCategoriesRecord:
                    CategoriesrptBLL ctrrptBLL = null;
                    ctrrptBLL = new CategoriesrptBLL();
                    return ctrrptBLL.GetAllCategoriesrpt(param);
                    break;
                case TestTask.AG_GetAllInvoiceBycatname:
                    ctrrptBLL = new CategoriesrptBLL();
                    return ctrrptBLL.GetAllInvoiceBycatname(param);
                    break;
                case TestTask.AG_GetqtytotalvalueRecord:
                    ctrrptBLL = new CategoriesrptBLL();
                    return ctrrptBLL.GetqtytotalvalueRecord(param);
                    break;
                case TestTask.AG_GetAllInvoiceBycatnameexcel:
                    ctrrptBLL = new CategoriesrptBLL();
                    return ctrrptBLL.GetAllInvoiceBycatnameexcel(param);
                    break;
                #endregion

                #region Auto Generated - InventoryList
                case TestTask.AG_GetAllUDInfoListRecord:
                    AllUDInfoBLL UDBLL = null;
                    UDBLL = new AllUDInfoBLL();
                    return UDBLL.GetAllUDInfoListRecord(param);
                    break;
                //case TestTask.AG_GetAllInvoiceBycatname:
                //    ctrrptBLL = new CategoriesrptBLL();
                //    return ctrrptBLL.GetAllInvoiceBycatname(param);
                //    break;
                //case TestTask.AG_GetqtytotalvalueRecord:
                //    ctrrptBLL = new CategoriesrptBLL();
                //    return ctrrptBLL.GetqtytotalvalueRecord(param);
                //    break;
                #endregion

                #region Auto Generated - ExporterDetails
                case TestTask.AG_GetAllExporterDetailsRecord:
                    ExporterDetailsBLL EXBLL = null;
                    EXBLL = new ExporterDetailsBLL();
                    return EXBLL.GetAllExporterDetailsRecord(param);
                    break;
                case TestTask.AG_SaveExporterDetailsInfo:
                    EXBLL = new ExporterDetailsBLL();
                    return EXBLL.SaveExporterDetailsInfo(param);
                    break;
                case TestTask.AG_UpdateExporterDetailsInfo:
                    EXBLL = new ExporterDetailsBLL();
                    return EXBLL.UpdateExporterDetailsInfo(param);
                    break;
                case TestTask.AG_GetAllExporterInfo:
                    EXBLL = new ExporterDetailsBLL();
                    return EXBLL.GetAllExporterInfo(param);
                    break;
                case TestTask.AG_GetExporterDetails:
                    EXBLL = new ExporterDetailsBLL();
                    return EXBLL.GetExporterDetails(param);
                    break;
                case TestTask.AG_DeleteExporterdeatilsById:
                    EXBLL = new ExporterDetailsBLL();
                    return EXBLL.DeleteExporterdeatilsById(param);
                    break;
                case TestTask.AG_GetAllExporterAppInfo:
                    EXBLL = new ExporterDetailsBLL();
                    return EXBLL.GetAllExporterAppInfo(param);
                    break;

                #endregion

                #region Auto Generated - ConsigneeDetails
                case TestTask.AG_GetAllConsigneeDetailsRecord:
                    ConsigneeDetailsBLL CONBLL = null;
                    CONBLL = new ConsigneeDetailsBLL();
                    return CONBLL.GetAllConsigneeDetailsRecord(param);
                    break;
                case TestTask.AG_SaveConsigneeDetailsInfo:
                    CONBLL = new ConsigneeDetailsBLL();
                    return CONBLL.SaveConsigneeDetailsInfo(param);
                    break;
                case TestTask.AG_UpdateConsigneeDetailsInfo:
                    CONBLL = new ConsigneeDetailsBLL();
                    return CONBLL.UpdateConsigneeDetailsInfo(param);
                    break;
                case TestTask.AG_GetAllConsigneeInfo:
                    CONBLL = new ConsigneeDetailsBLL();
                    return CONBLL.GetAllConsigneeInfo(param);
                    break;
                case TestTask.AG_GetConsigneeName:
                    CONBLL = new ConsigneeDetailsBLL();
                    return CONBLL.GetConsigneeName(param);
                    break;
                case TestTask.AG_DeleteConsigneedeatilsById:
                    CONBLL = new ConsigneeDetailsBLL();
                    return CONBLL.DeleteConsigneedeatilsById(param);
                    break;
                #endregion

                #region Auto Generated - NotifypartyDetailsRecord
                case TestTask.AG_GetAllNotifypartyDetailsRecord:
                    NotifypartyDetailsBLL NOTBLL = null;
                    NOTBLL = new NotifypartyDetailsBLL();
                    return NOTBLL.GetAllNotifypartyDetailsRecord(param);
                    break;
                case TestTask.AG_SaveNotifypartyDetailsInfo:
                    NOTBLL = new NotifypartyDetailsBLL();
                    return NOTBLL.SaveNotifypartyDetailsInfo(param);
                    break;
                case TestTask.AG_UpdateNotifypartyDetailsInfo:
                    NOTBLL = new NotifypartyDetailsBLL();
                    return NOTBLL.UpdateNotifypartyDetailsInfo(param);
                    break;
                case TestTask.AG_GetAllNotifypartyInfo:
                    NOTBLL = new NotifypartyDetailsBLL();
                    return NOTBLL.GetAllNotifypartyInfo(param);
                    break;
                case TestTask.AG_GetNotifyName:
                    NOTBLL = new NotifypartyDetailsBLL();
                    return NOTBLL.GetNotifyName(param);
                    break;
                #endregion

                #region Auto Generated - HSCodeDetailsRecord
                case TestTask.AG_GetAllHSCodeDetailsRecord:
                    HSCodeBLL HSBLL = null;
                    HSBLL = new HSCodeBLL();
                    return HSBLL.GetAllHSCodeDetailsRecord(param);
                    break;
                case TestTask.AG_SaveHSCodeDetailsInfo:
                    HSBLL = new HSCodeBLL();
                    return HSBLL.SaveHSCodeDetailsInfo(param);
                    break;
                case TestTask.AG_UpdateHSCodeDetailsInfo:
                    HSBLL = new HSCodeBLL();
                    return HSBLL.UpdateHSCodeDetailsInfo(param);
                    break;
                case TestTask.AG_GetAllHSCodeInfo:
                    HSBLL = new HSCodeBLL();
                    return HSBLL.GetAllHSCodeInfo(param);
                    break;
                case TestTask.AG_GetAllHSCodeInfosecond:
                    HSBLL = new HSCodeBLL();
                    return HSBLL.GetAllHSCodeInfosecond(param);
                    break;
                case TestTask.AG_GetHSCodeName:
                    HSBLL = new HSCodeBLL();
                    return HSBLL.GetHSCodeName(param);
                    break;
                #endregion

                #region Auto Generated - DestinationRecord
                case TestTask.AG_GetAllDestinationRecord:
                    DestinationBLL desBLL = null;
                    desBLL = new DestinationBLL();
                    return desBLL.GetAllDestinationRecord(param);
                    break;
                case TestTask.AG_SaveDestinationInfo:
                    desBLL = new DestinationBLL();
                    return desBLL.SaveDestinationInfo(param);
                    break;
                case TestTask.AG_UpdateDestinationInfo:
                    desBLL = new DestinationBLL();
                    return desBLL.UpdateDestinationInfo(param);
                    break;
                case TestTask.AG_GetAllDestinationDetails:
                    desBLL = new DestinationBLL();
                    return desBLL.GetAllDestinationDetails(param);
                    break;
                case TestTask.AG_GetDestinationName:
                    desBLL = new DestinationBLL();
                    return desBLL.GetDestinationName(param);
                    break;
                case TestTask.AG_DeleteDestinationdeatilsById:
                    desBLL = new DestinationBLL();
                    return desBLL.DeleteDestinationdeatilsById(param);
                    break;
                #endregion

                #region Auto Generated - ExportFormEntryRecord
                case TestTask.AG_GetAllExportFormDetailsRecord:
                    ExportFormEntryBLL ExfBLL = null;
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.GetAllExportFormDetailsRecord(param);
                    break;
                case TestTask.AG_SaveExportFormEntryRecord:
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.SaveExportFormEntryRecord(param);
                    break;
                case TestTask.AG_UpdateExportFormEntryRecord:
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.UpdateExportFormEntryRecord(param);
                    break;
                case TestTask.AG_GetExporterFormUpdateByInvoiceNo:
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.GetExporterFormUpdateByInvoiceNo(param);
                    break;
                case TestTask.AG_GetExporterFormSearchByInvoiceNo:
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.GetExporterFormSearchByInvoiceNo(param);
                    break;
                case TestTask.AG_GetInvoiceSearchByNo:
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.GetInvoiceSearchByNo(param);
                    break;
                case TestTask.AG_GetDuplicateInvoiceno:
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.GetDuplicateInvoiceno(param);
                    break;
                case TestTask.AG_DeleteExportFormEntryDetailsById:
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.DeleteExportFormEntryDetailsById(param);
                    break;
                 ///
                 /// Export Form for Apparel Ltd.
                 ///
                case TestTask.AG_GetAllExportFormDetailsAppRecord:
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.GetAllExportFormDetailsAppRecord(param);
                    break;
                case TestTask.AG_GetInvoiceSearchByNoAPP:
                    ExfBLL = new ExportFormEntryBLL();
                    return ExfBLL.GetInvoiceSearchByNoAPP(param);
                    break;

                #endregion

                #region Auto Generated - GSPItemInfoRecord
                case TestTask.AG_GetAllGSPItemInfoRecord:
                    GSPItemInfoRecordBLL GSPItem = null;
                    GSPItem = new GSPItemInfoRecordBLL();
                    return GSPItem.GetAllGSPItemInfoRecord(param);
                    break;
                case TestTask.AG_SaveGSPItemInfoRecord:
                    GSPItem = new GSPItemInfoRecordBLL();
                    return GSPItem.SaveGSPItemInfoRecord(param);
                    break;
                case TestTask.AG_UpdateGSPItemInfoRecord:
                    GSPItem = new GSPItemInfoRecordBLL();
                    return GSPItem.UpdateGSPItemInfoRecord(param);
                    break;               
                #endregion

                #region Auto Generated - TranshipmentDetailsRecord
                case TestTask.AG_GetAllTranshipmentDetailsRecord:
                    TranshipmentDetailsBLL tnsBLL = null;
                    tnsBLL = new TranshipmentDetailsBLL();
                    return tnsBLL.GetAllTranshipmentDetailsRecord(param);
                    break;
                case TestTask.AG_SaveTranshipmentDetailsRecord:
                    tnsBLL = new TranshipmentDetailsBLL();
                    return tnsBLL.SaveTranshipmentDetailsRecord(param);
                    break;
                //case TestTask.AG_UpdateTranshipmentDetailsRecord:
                //    tnsBLL = new TranshipmentDetailsBLL();
                //    return tnsBLL.UpdateTranshipmentDetailsRecord(param);
                //    break;
                case TestTask.AG_GetAllTranshipmentDetails:
                    tnsBLL = new TranshipmentDetailsBLL();
                    return tnsBLL.GetAllTranshipmentDetails(param);
                    break;
                #endregion

                #region Auto Generated - GSPFormInfoRecord
                case TestTask.AG_GetAllGSPFormItemInfoRecord:
                    GSPFormInfoRecordBLL gspfDAL = null;
                    gspfDAL = new GSPFormInfoRecordBLL();
                    return gspfDAL.GetAllGSPFormItemInfoRecord(param);
                    break;
                case TestTask.AG_GetAllGSPFormInfoRecord:
                    gspfDAL = new GSPFormInfoRecordBLL();
                    return gspfDAL.GetAllGSPFormInfoRecord(param);
                    break;
                case TestTask.AG_SaveGSPFormDetailsRecord:
                    gspfDAL = new GSPFormInfoRecordBLL();
                    return gspfDAL.SaveGSPFormDetailsRecord(param);
                    break;
                case TestTask.AG_UpdateTranshipmentDetailsRecord:
                    gspfDAL = new GSPFormInfoRecordBLL();
                    return gspfDAL.UpdateGSPFormDetailsRecord(param);
                    break;
                case TestTask.AG_GetGSPFormSearchByInvoiceno:
                    gspfDAL = new GSPFormInfoRecordBLL();
                    return gspfDAL.GetGSPFormSearchByInvoiceno(param);
                    break;
                #endregion

                #region Auto Generated - TTRecord
                case TestTask.AG_GetTTRecord:
                    TTRecordBLL ttBLL = null;
                    ttBLL = new TTRecordBLL();
                    return ttBLL.GetTTRecord(param);
                    break;
                case TestTask.AG_SaveTTRecordInfo:
                    ttBLL = new TTRecordBLL();
                    return ttBLL.SaveTTRecordInfo(param);
                    break;
                case TestTask.AG_UpdateTTRecordInfo:
                    ttBLL = new TTRecordBLL();
                    return ttBLL.UpdateTTRecordInfo(param);
                    break;
                case TestTask.AG_GetTTRecordBalance:
                    ttBLL = new TTRecordBLL();
                    return ttBLL.GetTTRecordBalance(param);
                    break;
                case TestTask.AG_GetTTBalance:
                    ttBLL = new TTRecordBLL();
                    return ttBLL.GetTTBalance(param);
                    break;
                #endregion

                ////Export Form Report Information ***

                #region Auto Generated - TTCMInformation
                case TestTask.AG_GetTTCMInformationRecord:
                    TTCMInformationBLL ttcmI = null;
                    ttcmI = new TTCMInformationBLL();
                    return ttcmI.GetTTCMInformationRecord(param);
                    break;
                case TestTask.AG_GetTTCMInformationByttno:
                    ttcmI = new TTCMInformationBLL();
                    return ttcmI.GetTTCMInformationByttno(param);
                    break;
                case TestTask.AG_GetCMTotalusingTTNo:
                    ttcmI = new TTCMInformationBLL();
                    return ttcmI.GetCMTotalusingTTNo(param);
                    break;
                case TestTask.AG_GetAllExportFormReportRecord:
                    ttcmI = new TTCMInformationBLL();
                    return ttcmI.GetAllExportFormReportRecord(param);
                    break;
                case TestTask.AG_GetAllExportFormRecord:
                    ttcmI = new TTCMInformationBLL();
                    return ttcmI.GetAllExportFormRecord(param);
                    break;
                #endregion

                /// 
                /// Commercial Sales Information ****
                ///                
                #region Auto Generated - ComsalsesInfoRecord
                case TestTask.AG_GetComsalsesInfoRecord:
                    CommsalesinfoBLL csBLL = null;
                    csBLL = new CommsalesinfoBLL();
                    return csBLL.GetComsalsesInfoRecord(param);
                    break;
                case TestTask.AG_SaveComsalesEntryInfo:
                    csBLL = new CommsalesinfoBLL();
                    return csBLL.SaveComsalesEntryInfo(param);
                    break;
                case TestTask.AG_UpdateComsalesEntryInfo:
                    csBLL = new CommsalesinfoBLL();
                    return csBLL.UpdateComsalesEntryInfo(param);
                    break;
                case TestTask.AG_GetSalesUpdateByInvoiceNo:
                    csBLL = new CommsalesinfoBLL();
                    return csBLL.GetSalesUpdateByInvoiceNo(param);
                    break;
                case TestTask.AG_GetDuplicatesalesInvoiceno:
                    csBLL = new CommsalesinfoBLL();
                    return csBLL.GetDuplicatesalesInvoiceno(param);
                    break;
                case TestTask.AG_GetCSalesInvoiceSearchByNo:
                    csBLL = new CommsalesinfoBLL();
                    return csBLL.GetCSalesInvoiceSearchByNo(param);
                    break;
                case TestTask.AG_GetSalesEntryInvoiceSearchByNo:
                    csBLL = new CommsalesinfoBLL();
                    return csBLL.GetSalesEntryInvoiceSearchByNo(param);
                    break;
                case TestTask.AG_GetCheckshippingInvoiceNo:
                    csBLL = new CommsalesinfoBLL();
                    return csBLL.GetCheckshippingInvoiceNo(param);
                    break;
                #endregion

                    //// 
                    /// Shipping Team Information***
                /// 
                #region Auto Generated - ShippingInfoRecord
                case TestTask.AG_GetShippingInfoRecord:
                    ShippingInfoBLL sppBLL = null;
                    sppBLL = new ShippingInfoBLL();
                    return sppBLL.GetShippingInfoRecord(param);
                    break;
                case TestTask.AG_SaveShippingformEntry:
                    sppBLL = new ShippingInfoBLL();
                    return sppBLL.SaveShippingformEntry(param);
                    break;
                case TestTask.AG_UpdateShippingformEntry:
                    sppBLL = new ShippingInfoBLL();
                    return sppBLL.UpdateShippingformEntry(param);
                    break;
                case TestTask.AG_GetShippingInvoiceSearchByNo:
                    sppBLL = new ShippingInfoBLL();
                    return sppBLL.GetShippingInvoiceSearchByNo(param);
                    break;
                case TestTask.AG_GetDuplicateshipInvoiceNo:
                    sppBLL = new ShippingInfoBLL();
                    return sppBLL.GetDuplicateshipInvoiceNo(param);
                    break;
                case TestTask.AG_GetShippingformEntryUpdByInvoiceNo:
                    sppBLL = new ShippingInfoBLL();
                    return sppBLL.GetShippingformEntryUpdByInvoiceNo(param);
                    break;
                #endregion

                ///
                /// Report Information***
                ///

                #region Auto Generated - AllReport Information
                case TestTask.AG_GetAllSalesreportRecord:
                    AllReportInfoBLL allBLL = null;
                    allBLL = new AllReportInfoBLL();
                    return allBLL.GetAllSalesreportRecord(param);
                    break;
                //case TestTask.AG_SaveShippingformEntry:
                //    sppBLL = new ShippingInfoBLL();
                //    return sppBLL.SaveShippingformEntry(param);
                //    break;               
                #endregion
                
                ///
                /// Customs Audit Details Information.
                ///

                #region Auto Generated - Customs Audit Info 
                case TestTask.AG_GetCustomsAuditInfoRecord:
                    CustomsAuditBLL auditBLL = null;
                    auditBLL = new CustomsAuditBLL();
                    return auditBLL.GetCustomsAuditInfoRecord(param);
                    break;
                case TestTask.AG_GetAuditInvoiceSearchByNo:
                    auditBLL = new CustomsAuditBLL();
                    return auditBLL.GetAuditInvoiceSearchByNo(param);
                    break;
                case TestTask.AG_SaveCustomsAuditDetails:
                    auditBLL = new CustomsAuditBLL();
                    return auditBLL.SaveCustomsAuditDetails(param);
                    break;
                case TestTask.AG_UpdateCustomsAuditDetails:
                    auditBLL = new CustomsAuditBLL();
                    return auditBLL.UpdateCustomsAuditDetails(param);
                    break;
                case TestTask.AG_GetDuplicateAuditInvoiceNo:
                    auditBLL = new CustomsAuditBLL();
                    return auditBLL.GetDuplicateAuditInvoiceNo(param);
                    break;
                case TestTask.AG_GetCustomsAuditInvoiceSearchByNo:
                    auditBLL = new CustomsAuditBLL();
                    return auditBLL.GetCustomsAuditInvoiceSearchByNo(param);
                    break;
                case TestTask.AG_GetCustomsAuditDetailsUpdateByInvoiceNo:
                    auditBLL = new CustomsAuditBLL();
                    return auditBLL.GetCustomsAuditDetailsUpdateByInvoiceNo(param);
                    break;
                #endregion


                default:
                    break;
            }
            return null;
        }
        public object Execute(string methodName)
        {
            throw new NotImplementedException();
        }
    }
}
