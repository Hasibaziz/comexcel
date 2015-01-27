using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Domain.Model;
using System.Data;
using Test.Structure;
using Test.Models;
using System.Threading;
using Test.Utility;
using Test.Common.Authentication;


namespace Test.Controllers
{
    public class UserController : BaseController
    {
        //
        // GET: /User/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult CreateGroup()
        {
            return View();
        }

        [HttpPost]
        public JsonResult CreateGroupList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllCreateGroupRecord, null);
                    List<GroupEntity> ItemList = null;
                    ItemList = new List<GroupEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new GroupEntity()
                            {
                                ID = dr["ID"].ToString(),
                                GroupName = dr["Name"].ToString(),
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
        public JsonResult AddUpdateCreateGroup(GroupEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveCreateGroupInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateCreateGroupInfo, _Model);
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
        public JsonResult DeleteCreateGroupInfo(string ID)
        {
            try
            {
                Thread.Sleep(50);
                bool isUpdate = false;
                isUpdate = (bool)ExecuteDB(TestTask.AG_DeleteCreateGroupInfoById, ID);
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
        public JsonResult AllCreateGroupList()
        {
            try
            {
                var jList = GetAllCreateGroupList().Select(c => new { DisplayText = c.Text, Value = c.Value });
                return Json(new { Result = "OK", Options = jList });
            }
            catch (Exception ex)
            {
                return Json(new { Result = "ERROR", Message = ex.Message });
            }
        }
        


        public ActionResult CreateUsers()
        {
            return View();
        }
        [HttpPost]
        public JsonResult CreateUsersList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllCreateUsersListRecord, null);
                    List<CreateUserEntity> ItemList = null;
                    ItemList = new List<CreateUserEntity>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new CreateUserEntity()
                            {
                                ID = dr["ID"].ToString(),
                                UserName = dr["UserName"].ToString(),
                                Password = dr["Password"].ToString(),
                                FullName = dr["FullName"].ToString(),
                                Email = dr["Email"].ToString(),
                                IsActive = Convert.ToBoolean(dr["IsActive"].ToString()),
                                //Created =Convert.ToDateTime( dr["Created"].ToString()),
                                Created = dr["Created"].ToString(),
                                GroupID = dr["GroupID"].ToString()
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
        public JsonResult AddUpdateCreateUsers(CreateUserEntity _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }


                bool isUpdate = false;
                _Model.Created = Convert.ToString(DateTime.Today);
                if (_Model.ID == null)
                {
                    if (DeplicateMailCheck(_Model.Email) != false)
                        //ModelState.AddModelError("", "The Email address is already taken. Please choose another.");
                        //return Json("Sorry, " + _Model.Usermail + " already exist", JsonRequestBehavior.AllowGet);
                        return Json(new { Result = "Message", Message = "The Email address is already taken. Please choose another." });
                    //return ModelState.AddModelError("", "Given user name already taken. Please choose another.");
                    else
                    {
                        WebUtil.sendNotificationToSiteUser(_Model);          ///***********  For Sending Mail
                        //string Encriptpass = _Model.Password;
                        //_Model.Password = Encdecript.Encryptdata(Encriptpass);
                        isUpdate = (bool)ExecuteDB(TestTask.AG_SaveCreateUsersInfo, _Model);
                    }
                    
                }
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateCreateUsersInfo, _Model);
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
        public JsonResult DeleteCreateUsersInfo(string ID)
        {
            try
            {
                Thread.Sleep(50);
                bool isUpdate = false;
                isUpdate = (bool)ExecuteDB(TestTask.AG_DeleteCreateUsersById, ID);
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

        public bool DeplicateMailCheck(string UserID)
        {
            try
            {
                CreateUserEntity obj = (CreateUserEntity)GetDeplicateMailCheck(UserID);
                //var obj1 = GetDupMail(UserID);                
                if (obj.Email == null)
                    return false;
                else
                    return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public ActionResult LincenceKey()
        {
            return View();
        }
        [HttpPost]
        public JsonResult LincenceKeyList(int jtStartIndex = 0, int jtPageSize = 0, string jtSorting = null)
        {
            try
            {
                try
                {
                    DataTable dt = (DataTable)ExecuteDB(TestTask.AG_GetAllLincenceKeyRecord, null);
                    List<LicenceVerification> ItemList = null;
                    ItemList = new List<LicenceVerification>();
                    int iCount = 0;
                    int offset = 0;
                    offset = jtStartIndex / jtPageSize;
                    foreach (DataRow dr in dt.Rows)
                    {
                        if (iCount >= jtStartIndex && iCount < (jtPageSize * (offset + 1)))
                        {
                            ItemList.Add(new LicenceVerification()
                            {
                                ID = dr["ID"].ToString(),
                                LicenceKey = dr["LicenceKey"].ToString(),
                                KeyDate = dr["KeyDate"].ToString()
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
        public JsonResult AddUpdateLincenceKey(LicenceVerification _Model)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return Json(new { Result = "ERROR", Message = "Form is not valid! Please correct it and try again." });
                }

                string Encript = _Model.LicenceKey;
                _Model.LicenceKey = ViewsAuthentication.Encryptdata(Encript);
                bool isUpdate = false;
                if (_Model.ID == null)
                    isUpdate = (bool)ExecuteDB(TestTask.AG_SaveLincenceKeyInfo, _Model);
                else
                    isUpdate = (bool)ExecuteDB(TestTask.AG_UpdateLincenceKeyInfo, _Model);
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
