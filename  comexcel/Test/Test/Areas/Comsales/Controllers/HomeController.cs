using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Test.Controllers;

namespace Test.Areas.Comsales.Controllers
{
    public class HomeController : BaseController
    {
        //
        // GET: /Comsales/Home/

        public ActionResult Index()
        {
            return View();
        }

    }
}
