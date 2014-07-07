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
