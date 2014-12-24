using System.Web.Mvc;

namespace Test.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                //new { action = "Index", id = UrlParameter.Optional },
                new { area = "Admin", controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[]{ "Test.Areas.Admin.Controllers"}
            );
        }
    }
}
