using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Xml;
using System.Text;

namespace Test.Common.Authentication
{
    /// <summary>
    /// A Utility that Allows user to Authenticate in differnt Forms.
    /// </summary>
    public class ViewsAuthentication
    {
        private ViewsAuthentication()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        /// <summary>
        /// Creates and returns the Forms authentication ticket 
        /// </summary>
        /// <param name="userName">User name</param>
        /// <param name="commaSeperatedRoles">Comma seperated roles for the users</param>
        /// <param name="createPersistentCookie">True or false whether to create persistant cookie</param>
        /// <param name="strCookiePath">Path for which the authentication ticket is valid</param>
        private static FormsAuthenticationTicket CreateAuthenticationTicket(string userName, string commaSeperatedRoles, bool createPersistentCookie, string strCookiePath)
        {
            string cookiePath = strCookiePath == null ? FormsAuthentication.FormsCookiePath : strCookiePath;

            //Determine the cookie timeout value from web.config if specified
            int expirationMinutes = GetCookieTimeoutValue();

            //Create the authentication ticket
            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(
            1,                      //A dummy ticket version

            userName,               //User name for whome the ticket is issued

            DateTime.Now,           //Current date and time

            DateTime.Now.AddMinutes(expirationMinutes), //Expiration date and time

            createPersistentCookie, //Whether to persist coolkie on client side. If true, 
                //The authentication ticket will be issued for new sessions from
                //the same client PC    

            commaSeperatedRoles,    //Comma seperated user roles

            cookiePath);            //Path cookie valid for

            return ticket;
        }

        /// <summary>
        /// Retrieves cookie timeout value in the <forms></forms> section in the web.config file as this
        /// value is not accessable via the FormsAuthentication or any other built in class
        /// </summary>
        /// <returns></returns>
        private static int GetCookieTimeoutValue()
        {
            int timeout = 30; //Default timeout is 30 minutes
            XmlDocument webConfig = new XmlDocument();
            webConfig.Load(HttpContext.Current.Server.MapPath(@"~\web.config"));
            XmlNode node = webConfig.SelectSingleNode("/configuration/system.web/authentication/forms");
            if (node != null && node.Attributes["timeout"] != null)
            {
                timeout = int.Parse(node.Attributes["timeout"].Value);
            }

            return timeout;
        }

        /// <summary>
        /// Encryption of data for Security.
        /// </summary>
        /// <param name="password"></param>
        /// <returns></returns>

        public static string Encryptdata(string password)
        {
            string strmsg = string.Empty;
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            strmsg = Convert.ToBase64String(encode);
            return strmsg;
        }

        /// <summary>
        ///  Decryption of data which is Encrypted.
        /// </summary>
        /// <param name="encryptpwd"></param>
        /// <returns></returns>
        public static string Decryptdata(string encryptpwd)
        {
            string decryptpwd = string.Empty;
            UTF8Encoding encodepwd = new UTF8Encoding();
            Decoder Decode = encodepwd.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encryptpwd);
            int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            decryptpwd = new String(decoded_char);
            return decryptpwd;
        }

        /// <summary>
        /// DateTime Validation Check for User Access into the System.
        /// </summary>
        public class DateCheck
        {
            //public const DateTime VDATE = DateTime.Parse("02/03/2014 9:38:23 AM");   //---mm/dd/yyyy and Time
            public const String VDATE = "02/07/2015 9:38:23 AM";   //---mm/dd/yyyy and Time
           //public const String todaydate = DateTime.Now.ToString("03/02/2015");     //dd/MM/yyyy
            public const bool IsActive=true;     


        }
    }
}