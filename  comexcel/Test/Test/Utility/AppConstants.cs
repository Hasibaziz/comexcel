using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Test.Utility
{
    public class AppConstants
    {
        #region Area Definitions
        public class Area
        {
            public const String ADMIN = "Admin";
            public const String PRIVATE = "Private";
            public const String SALES = "Sales";
            public const String SHIPPING = "Shipping";
        }       
        #endregion

        #region Email Templates
        public class EmailTemplate
        {
            public const String COMMON = "/EmailTemplates/Common.html";
        }
        /// <summary>
        /// Custom Tag Constants in the Email Templates
        /// </summary>
        public class ETConstants
        {
            public const String MESSAGE = "[*MESSAGE*]";
            public const String DOMAIN = "[*DOMAIN*]";
        }
        #endregion
    }
}