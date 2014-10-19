using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Test.Models;
using Test.Structure;
using Test.Domain.Model;
using System.Data;


namespace Test.Controllers
{
    public class BaseController : Controller
    {
        public object ExecuteDB(string methodName, object param)
        {
            object retObject = ServerManager.GetTaskManager.Execute(1, methodName, param);
            return retObject;
        }

        public string CurrentUserId
        {
            get
            {
                if (Session["UserId"] != null)
                {
                    return (Session["UserId"].ToString());
                }

                return string.Empty;
            }
            set
            {
                Session["UserId"] = value;
            }
        }

        public string CurrentUserName
        {
            get
            {
                if (Session["UserName"] != null)
                {
                    return Session["UserName"].ToString();
                }

                return string.Empty;
            }

            set { Session["UserName"] = value; }
        }

        public string LoginDatetime
        {
            get
            {
                if (Session["LoginDatetime"] != null)
                {
                    return Session["LoginDatetime"].ToString();
                }

                return string.Empty;
            }

            set { Session["LoginDatetime"] = value; }
        }

        public string CurrentUserEmail
        {
            get
            {
                if (Session["UserEmail"] != null)
                {
                    return Session["UserEmail"].ToString();
                }

                return string.Empty;
            }

            set { Session["UserEmail"] = value; }
        }
        public string CurrentUserPassword
        {
            get
            {
                if (Session["UserPassword"] != null)
                {
                    return (Session["UserPassword"].ToString());
                }

                return string.Empty;
            }
            set
            {
                Session["UserPassword"] = value;
            }
        }
        public string CurrentUserIsActive
        {
            get
            {
                if (Session["IsActive"] != null)
                {
                    return (Session["IsActive"].ToString());
                }

                return string.Empty;
            }
            set
            {
                Session["IsActive"] = value;
            }
        }
        public string CurrentGroups
        {
            get
            {
                if (Session["Groups"] != null)
                {
                    return (Session["Groups"].ToString());
                }

                return string.Empty;
            }
            set
            {
                Session["Groups"] = value;
            }
        }
        protected void SetLoginSessionData(LoginModel LoginM, bool createPersistentCookie)
        {
            SetUserSessionData(LoginM);
            FormsAuthentication.SetAuthCookie("1", createPersistentCookie);
            Session.Timeout = 10;

        }

        protected void SetUserSessionData(LoginModel LoginM)
        {
            //CurrentUserName = LoginM.Id + " " + LoginM.Password;
            CurrentUserPassword = LoginM.Password;
            CurrentUserName = LoginM.UserName;
            CurrentUserIsActive = LoginM.IsActive;
            CurrentGroups = LoginM.Groups;
            LoginDatetime = DateTime.Now.ToString("dd/MM/yyyy hh:mm tt");
            CurrentUserId = LoginM.ID;
        }

        public bool isValidField(string _val)
        {
            if (_val == null)
                return false;
            else if (_val.Trim().Length == 0)
                return false;
            else if (_val.Trim() == "Select")
                return false;
            else if (_val.Trim() == "0")
                return false;
            return true;
        }
        public bool isValidNumericField(string _val)
        {
            if (_val == null)
                return false;
            else if (_val.Trim().Length == 0)
                return false;
            else if (_val.Trim() == "0")
                return false;
            else
            {
                try
                {
                    double dl = Convert.ToDouble(_val.Trim());
                    if (dl < 0)
                        return false;
                }
                catch { return false; }
            }
            return true;
        }
        public string ConvertNulltoString(string _val)
        {
            if (_val == null)
                return "";
            else
                return _val;
        }

        public string GetConvertedDate(string _dt)
        {
            if (_dt == null) return null;

            string[] _Convertdate = _dt.Split('/');
            string _dtNewdate = _Convertdate[1] + "/" + _Convertdate[0] + "/" + _Convertdate[2];
            return _dtNewdate;
        }


        public List<SelectListItem> GetAllServiceNameListItem()
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllTrServicemasterRecord, null);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["Servicename"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public List<SelectListItem> GetAllCategoryNameListItem()
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllCategorynameRecord, null);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["Name"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        public List<SelectListItem> GetAllCategoryName(ImportexcelEntity name)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetcategorynamebyID, name);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["Name"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public List<SelectListItem> GetALLlocation(LocationEntity location)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetLocationbyID, location);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["Location"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }

        public object GetqtytotalvalueRecord(string Pcategoryname, string Pinvoice, string PSDate, string PEDate)
        {

            ImportexcelEntity _Model = new ImportexcelEntity();
            _Model.Category = Pcategoryname;
            _Model.Invoice = Pinvoice;
            _Model.StartDate = PSDate;
            _Model.EndDate = PEDate;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetqtytotalvalueRecord, _Model);

            foreach (DataRow dr in dt.Rows)
            {

                //_Model.ItemID = dr["ItemID"].ToString();               
                _Model.SumQTY = dr["SumQTY"].ToString();
                _Model.SumTotalval = dr["SumTotalval"].ToString();               

            }
            return _Model;
        }

        public object GetDuplicatecheckinv(string Pinvoice)
        {
            ImportexcelEntity _Model = new ImportexcelEntity();
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_Duplicateheckinv, Pinvoice);

            foreach (DataRow dr in dt.Rows)
            {
                _Model.Invoice = dr["Invoice"].ToString();

            }
            return _Model;
        }
        public List<SelectListItem> GetAllItemName(ImportexcelEntity item)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllIteminfo, item);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["Item"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public List<SelectListItem> GetItemList(string ItemName)
        {
            ImportexcelEntity Model = new ImportexcelEntity();          
            Model.Category = ItemName;

            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetItemByCategoryID, Model);
            List<SelectListItem> Items = new List<SelectListItem>();
            if (dt.Rows.Count > 0)
            {
                Items.Add(new SelectListItem { Text = "", Value = "" });
                foreach (DataRow dr in dt.Rows)
                {
                    Items.Add(new SelectListItem { Text = dr["Item"].ToString(), Value = dr["ID"].ToString() });
                }
            }
            else
            {
                Items = new List<SelectListItem>();
                Items.Add(new SelectListItem { Text = "", Value = "" });
            }
            return Items;
        }
        public List<SelectListItem> GetAllExporterDetails(ExporterEntity Exp)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllExporterInfo, Exp);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ExporterID"].ToString(),
                        Text = dr["ExporterNo"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public List<SelectListItem> GetAllConsigneeDetails(ConsigneeEntity Con)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllConsigneeInfo, Con);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["ConsigneeNo"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public List<SelectListItem> GetAllNotifypartyDetails(NotifypartyEntity Not)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllNotifypartyInfo, Not);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["NotifyNo"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public List<SelectListItem> GetAllHSCodeDetails(HSCodeEntity hsCode)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllHSCodeInfo, hsCode);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["HSCode"].ToString()                        
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public List<SelectListItem> GetAllHSCodeDetailssecond(HSCodeEntity hsCode)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllHSCodeInfosecond, hsCode);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["HSs"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public List<SelectListItem> GetAllModeinfoDetails(ModeinfoEntity tCode)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllModeinfoDetails, tCode);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        Text = dr["Name"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public List<SelectListItem> GetAllDestinationDetails(DestinationEntity dsCode)
        {
            try
            {
                DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllDestinationDetails, dsCode);
                List<SelectListItem> ItemList = null;
                ItemList = new List<SelectListItem>();
                foreach (DataRow dr in dt.Rows)
                {
                    ItemList.Add(new SelectListItem()
                    {
                        Value = dr["ID"].ToString(),
                        //Text = dr["CCODE"].ToString()
                        Text = dr["CCode"].ToString()
                    });

                }
                return ItemList;
            }
            catch (Exception)
            {
                return null;
            }
        }
        public object GetExporterDetails(string imodel)
        {

            ExporterEntity _Model = new ExporterEntity();
            _Model.ID = imodel;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetExporterDetails, _Model);

            foreach (DataRow dr in dt.Rows)
            {

                _Model.ID = dr["ExporterID"].ToString();
                _Model.ExporterName = dr["ExporterName"].ToString();

            }
            return _Model;
        }
        public object GetConsigneeName(string imodel)
        {

            ConsigneeEntity _Model = new ConsigneeEntity();
            _Model.ID = imodel;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetConsigneeName, _Model);

            foreach (DataRow dr in dt.Rows)
            {

                _Model.ID = dr["ID"].ToString();
                _Model.ConsigneeName = dr["ConsigneeName"].ToString();

            }
            return _Model;
        }
        public object GetNotifyName(string imodel)
        {

            NotifypartyEntity _Model = new NotifypartyEntity();
            _Model.ID = imodel;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetNotifyName, _Model);

            foreach (DataRow dr in dt.Rows)
            {

                _Model.ID = dr["ID"].ToString();
                _Model.NotifyName = dr["NotifyName"].ToString();

            }
            return _Model;
        }
        public object GetHSCodeName(string imodel)
        {

            HSCodeEntity _Model = new HSCodeEntity();
            _Model.ID = imodel;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetHSCodeName, _Model);

            foreach (DataRow dr in dt.Rows)
            {

                _Model.ID = dr["ID"].ToString();
                _Model.HSCodeName = dr["HSCodeName"].ToString();

            }
            return _Model;
        }
        public object GetDestinationName(string imodel)
        {

            DestinationEntity _Model = new DestinationEntity();
            _Model.ID = imodel;
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetDestinationName, _Model);

            foreach (DataRow dr in dt.Rows)
            {

                _Model.ID = dr["ID"].ToString();
                _Model.Name = dr["Name"].ToString();
                _Model.CountryCode = dr["CountryCode"].ToString();
            }
            return _Model;
        }
        public object GetDuplicateInvoiceno(string invoice)
        {
            ExportformEntity _Model = new ExportformEntity();
            DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetDuplicateInvoiceno, invoice);

            foreach (DataRow dr in dt.Rows)
            {
                _Model.ID = dr["ID"].ToString();
                _Model.InvoiceNo = dr["InvoiceNo"].ToString();

            }
            return _Model;
        }
    }
}
