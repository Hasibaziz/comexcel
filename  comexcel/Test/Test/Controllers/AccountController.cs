using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using Test.Models;
using System.Data;
using Test.DAL;
using System.Collections;
using Test.Structure;
using Test.Domain.Model;
using Test.Common.Authentication;

namespace Test.Controllers
{
    public class AccountController : BaseController
    {
        [HttpGet]
        public ActionResult Login(LoginModel model)
        {
            ModelState.Clear();
            return View("Login", model);
        }
        [HttpPost]
        public ActionResult Login(string submit, LoginModel model, LicenceVerification _Model)
        {           
            User iUser = new User();
            DataTable dt = iUser.GetUserInfo(model);
          
            if (dt.Rows.Count > 0)
            {
                model.IsActive = dt.Rows[0]["IsActive"].ToString();
                if ((model.UserName == dt.Rows[0]["UserName"].ToString()) 
                    && (model.Password == dt.Rows[0]["Password"].ToString()))
                {                   
                    model.UserName = dt.Rows[0]["UserName"].ToString();
                    model.Password = dt.Rows[0]["Password"].ToString();
                    model.Groups = dt.Rows[0]["Groups"].ToString();
                    SetLoginSessionData(model, false);
                    Session["UserName"] = CurrentUserName;
                    Session["Groups"] = CurrentGroups;                   
                    //if(CurrentGroups=="Admin")
                    //   return RedirectToAction("Index", "Home");
                    //else if (CurrentGroups == "Private")
                    //   return RedirectToAction("Index", "Private");
                    //else
                    //DateTime VDATA = DateTime.Now;                   
                    //string VDATA = DateTime.Now.ToString("MM/dd/yyyy");                   
                    //*DateTime vDATE = ViewsAuthentication.DateCheck.VDATE;
                    //**DateTime dtSuppliedDate = DateTime.Parse(ViewsAuthentication.DateCheck.VDATE);
                    //bool IsValid = Convert.ToBoolean(ViewsAuthentication.DateCheck.IsActive);
                    //int day = dtSuppliedDate.Subtract(DateTime.Now).Days;
                    //int sysDay = VDATA.Subtract(DateTime.Now).Days;

                    //if (ViewsAuthentication.IsValid() == true)
                    //    return RedirectToAction("Contract", "Home");
                    //else
                        return RedirectToAction("Index", "Home");
                }
                else
                {
                  ModelState.AddModelError("UserName", "invalid username or password.");
                }
            }
            else
            {
              ModelState.AddModelError("UserName", "invalid username or password.");
            }
            return View("Login", model);
        }

        public ActionResult Logout(SystemUserModel model)
        {
            System.Web.Security.FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }

    }
}
