using System.Web.Mvc;

namespace Test.Areas.Comsales
{
    public class ComsalesAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Comsales";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Comsales_default",
                "Comsales/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "Test.Areas.Comsales.Controllers" }
            );
        }
    }
}
